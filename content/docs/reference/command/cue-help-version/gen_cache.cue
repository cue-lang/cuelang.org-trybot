package site
{
	content: {
		docs: {
			reference: {
				command: {
					"cue-help-version": {
						page: {
							cache: {
								multi_step: {
									hash:       "GVLR2166G1N7EAEPOLR54H98S2Q4PASQO55VADJH5QQ5HT492SG0===="
									scriptHash: "CE6LA44AO2RPMDK3UUVMNAPLMCVC4CV9LBMVVL3M8GGUDVN9L52G===="
									steps: [{
										doc:      ""
										cmd:      "export PATH=/cues/v0.12.0:$PATH"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue help version"
										exitCode: 0
										output: """
												print CUE version

												Usage:
												  cue version [flags]

												Global Flags:
												  -E, --all-errors   print all available errors
												  -i, --ignore       proceed in the presence of errors
												  -s, --simplify     simplify output
												      --trace        trace computation
												  -v, --verbose      print information about progress

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
