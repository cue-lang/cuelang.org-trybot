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
									hash:       "4EGNIHR9KO3OTJ3DC7FNO0TD9UMN4CFGMVF8GJCB8LP69S48DJIG===="
									scriptHash: "2Q3JMTEJFPJUN9A3L05OK60GFUH4SS2EHHIS5ULKD19H8UHPQHB0===="
									steps: [{
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
												      --strict       report errors for lossy mappings (deprecated: use "jsonschema+strict:" filetype instead; see cue help filetypes)
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
