// package core contains data values that are commont to all CUE
// configurations.  This not only includes GitHub workflows, but also things
// like gerrit configuration etc.
package core

import (
	"github.com/cue-lang/cuelang.org/internal/ci/base"
)

// The machines that we use
linuxMachine:   "ubuntu-20.04"
macosMachine:   "macos-11"
windowsMachine: "windows-2022"

// Define core URLs that will be used in the codereview.cfg and GitHub workflows
githubRepositoryURL:  "https://github.com/cue-lang/cuelang.org"
gerritRepositoryURL:  "https://review.gerrithub.io/a/cue-lang/cuelang.org"
githubRepositoryPath: base.#URLPath & {#url: githubRepositoryURL, _}

// Use the latest Go version for extra checks,
// such as running tests with the data race detector.
latestStableGo: "1.19.x"

goreleaserVersion: "v1.13.1"

// Use a specific latest version for release builds.
// Note that we don't want ".x" for the sake of reproducibility,
// so we instead pin a specific Go release.
goVersion: "1.19.4"

// Use a specific version of NodeJS for deploy purposes. This version
// is consistent between netlify and GitHub Actions usage.
nodeVersion: "18.12.1"

// hugoVersion is the version of hugo used in generating our static site
hugoVersion: "0.108.0"

// netlifyCLIVersion is the version of the Netlify CLI used to deploy tip and
// deploy previews of CLs
netlifyCLIVersion: "12.4.0"

netlifySites: {
	cls: "cue-cls"
	tip: "cue-tip"
}

defaultBranch: "master"

// releaseTagPrefix is the prefix used to identify all git tag that correspond
// to semver releases
releaseTagPrefix: "v"

// releaseTagPattern is the GitHub glob pattern that corresponds to
// releaseTagPrefix.
releaseTagPattern: releaseTagPrefix + "*"

codeReview: base.#codeReview & {
	github: githubRepositoryURL
	gerrit: gerritRepositoryURL
}

// protectedBranchPatterns is a list of glob patterns to match the protected
// git branches which are continuously used during development on Gerrit.
// This includes the default branch and release branches,
// but excludes any others like feature branches or short-lived branches.
// Note that ci/test is excluded as it is GitHub-only.
protectedBranchPatterns: [defaultBranch, "alpha"]
