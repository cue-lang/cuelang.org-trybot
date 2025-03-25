package site
{
	content: {
		docs: {
			draft: {
				cldd: {
					"spotting-errors-earlier-goreleaser-files": {
						page: {
							cache: {
								upload: {
									broken: "Y/GIqTVRPpP4KCNVJrhuN/ZmbrAwo2EbCfvohweXzlM="
									fixed:  "Q/5fhRPkpTJnZo2vrA3UB8gK0nGfh9ZcnyDA7mBD8tY="
								}
								multi_step: {
									hash:       "KO92G5VOSPA1OKFOK3MKHUI5LA0FAQTUUQAAA7P6K3D5VM7PJ0N0===="
									scriptHash: "OGAR469612M25HIQR46FJ8P8TPG5SPU6RHJF4LPB8M8IR48HF2CG===="
									steps: [{
										doc:      "# Registry auth"
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
										doc:      "# TODO(jm): revert to latest when it has evalv3 as default."
										cmd:      "export PATH=/cues/v0.13.0-alpha.3:$PATH"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue vet -c -d '#Project' cue.dev/x/goreleaser@latest .goreleaser.yml"
										exitCode: 1
										output: """
												docker: field not allowed:
												    .goreleaser.yml:7:1

												"""
									}, {
										doc:      ""
										cmd:      "cue vet -c -d '#Project' cue.dev/x/goreleaser@latest .goreleaser.yml"
										exitCode: 0
										output:   ""
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
