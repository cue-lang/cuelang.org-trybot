package site
{
	content: {
		docs: {
			howto: {
				"validate-json-using-cue": {
					page: {
						cache: {
							upload: {
								"x.json":       "aWqZ18R80MQQxXfLxFdP7RIlPvDnAhWrznzTcJlsI2I="
								"x.cue":        "QOPCz2dKmf9MdrbVkdxYUto3DTTqgNoVVjbgsKyxA/8="
								"x.json v2":    "nkVxZgMGXgkOzGOOkt0vOyMDYCQHld+sDpuc77iP8WM="
								"fixed x.json": "Y+2NQJc/HWxG+3lbXTnH+WqVggrQ5MWRgKXQg8Ugf5M="
							}
							multi_step: {
								hash:       "OQUO5GKEC26RRSFTFVTT2H49ROB1OFIH2SOTHL0IQCJ4OUN9CUJG===="
								scriptHash: "UMP1JTJB5F0SVS45CSPDVU8KSNKPQ7SI0OEVSC7IQVT5NDCE1PM0===="
								steps: [{
									doc:      ""
									cmd:      "cue vet x.cue x.json"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cue vet x.cue x.json"
									exitCode: 1
									output: """
											people.Rob.age: conflicting values 42.2 and int (mismatched types float and int):
											    ./x.cue:3:11
											    ./x.cue:7:21
											    ./x.json:15:20

											"""
								}, {
									doc:      ""
									cmd:      "cue vet x.cue x.json"
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
