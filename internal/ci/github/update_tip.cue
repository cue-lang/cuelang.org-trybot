// Copyright 2022 The CUE Authors
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package github

import (
	"strings"

	"github.com/cue-lang/cuelang.org/internal/ci/core"

	"github.com/SchemaStore/schemastore/src/schemas/json"
)

// The update_tip workflow. Keeps the tip branch in "sync" with master.
update_tip: _base.#bashWorkflow & {

	name: "Update tip"
	on: {
		push: branches: [_#defaultBranch]
	}

	// Ensure we only ever have a single tip deploy running at a time. This
	// avoids any potential race condition between concurrent deploys of
	// "latest".
	concurrency: "deploy"

	jobs: push: {
		"runs-on": _#linuxMachine
		if:        "${{github.repository == '\(core.#githubRepositoryPath)'}}"
		steps: [
			_gerrithub.#writeNetrcFile,
			json.#step & {
				name: "Push tip to trybot"
				run:  """
						mkdir tmpgit
						cd tmpgit
						git init
						git config user.name \(_gerrithub.#botGitHubUser)
						git config user.email \(_gerrithub.#botGitHubUserEmail)
						git config http.https://github.com/.extraheader "AUTHORIZATION: basic $(echo -n \(_gerrithub.#botGitHubUser):${{ secrets.\(_gerrithub.#botGitHubUserTokenSecretsKey) }} | base64)"
						git remote add origin \(_gerrithub.#gerritHubRepository)
						git remote add trybot \(_gerrithub.#trybotRepositoryURL)
						git fetch origin \(strings.Join(_#activeBranches, " "))
						git push trybot "refs/remotes/origin/*:refs/heads/*"
						"""
			},
			_base.#checkoutCode & {
				with: ref: _#defaultBranch
			},
			_#cachePre,
			_#installNode,
			_#installGo,
			_#installHugo,
			_#tipDist,
			_#installNetlifyCLI,
			_#netlifyDeploy & {
				#prod: true
				#site: core.#netlifySites.tip
				name:  "Deploy tip"
			},
			_#cachePost,
		]
	}

}