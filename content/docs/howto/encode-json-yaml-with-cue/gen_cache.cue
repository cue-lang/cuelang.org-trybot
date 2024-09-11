package site
{
	content: {
		docs: {
			howto: {
				"encode-json-yaml-with-cue": {
					page: {
						cache: {
							upload: {
								json: "xQkzB22nRqz9U9sXgTWYk8wX+gEl8JqsXcAy4/YpHD8="
								yaml: "5InI45qBOsOynu12MqXVJzQpc8/OGsu3WRW5ZxpMsMc="
							}
							multi_step: {
								hash:       "7V3JFPSE22R18094I90NF4EC6VL8Q67276CIFAV4GPJLDSCRPDK0===="
								scriptHash: "NBDCPULNRD3R08PD54O4HRS8CFC39I0KHVEB4PRGRRQAUR3M26JG===="
								steps: [{
									doc:      ""
									cmd:      "cue export nested-json.cue"
									exitCode: 0
									output: """
											{
											    "nestedJSON": "{\\"innerString\\":\\"inside\\"}",
											    "outerString": "outside"
											}

											"""
								}, {
									doc:      ""
									cmd:      "cue export nested-yaml.cue"
									exitCode: 0
									output: """
											{
											    "nestedYAML": "innerString: inside\\n",
											    "outerString": "outside"
											}

											"""
								}, {
									doc:      ""
									cmd:      "cue export nested-json.cue --out yaml"
									exitCode: 0
									output: """
											nestedJSON: '{"innerString":"inside"}'
											outerString: outside

											"""
								}, {
									doc:      ""
									cmd:      "cue export nested-yaml.cue --out cue"
									exitCode: 0
									output: #"""
											nestedYAML: """
											\#tinnerString: inside

											\#t"""
											outerString: "outside"

											"""#
								}]
							}
						}
					}
				}
			}
		}
	}
}
