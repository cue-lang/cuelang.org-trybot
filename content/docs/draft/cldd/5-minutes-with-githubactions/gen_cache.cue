package site
{
	content: {
		docs: {
			draft: {
				cldd: {
					"5-minutes-with-githubactions": {
						page: {
							cache: {
								upload: {
									"1": "cZD3swF1vzK+K3zlkTXP11F2x/5KvVmdkYR1/x5OpCk="
								}
								multi_step: {
									hash:       "6I0EP4ONULSAP1JPDUQJ29NTOPFQ1KVC485NPG37HP84U8GAVQ0G===="
									scriptHash: "LDUF2BB040TG6KC891JEB4FIA4QDEPJ9E1UH9J71V6OPT0B3I7IG===="
									steps: [{
										doc:      ""
										cmd:      "mkdir -p $HOME/.config/cue"
										exitCode: 0
										output:   ""
									}, {
										doc: ""
										cmd: """
												cat <<EOD >$HOME/.config/cue/logins.json
												{"registries":{"registry.cue.works":{"access_token":"${TEST_USER_AUTHN_CUE_USER_NEW}","token_type":"Bearer"}}}
												EOD
												"""
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue mod init"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue mod tidy"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue vet .:gha"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue export .:gha --outfile workflow.yml"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cat workflow.yml"
										exitCode: 0
										output: """
												name: learn-github-actions
												"on":
												  - push
												jobs:
												  check-bats-version:
												    runs-on: ubuntu-latest
												    steps:
												      - uses: actions/checkout@v4
												      - uses: actions/setup-node@v4
												        with:
												          node-version: "20"
												      - run: npm install -g bats
												      - run: bats -v
												run-name: ${{ github.actor }} is learning GitHub Actions

												"""
									}]
								}
							}
						}
					}
				}
			}
		}
	}
}
