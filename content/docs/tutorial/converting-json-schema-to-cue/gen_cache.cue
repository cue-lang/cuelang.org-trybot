package site
{
	content: {
		docs: {
			tutorial: {
				"converting-json-schema-to-cue": {
					page: {
						cache: {
							upload: {
								"json schema":        "DAf9V5gJBat1WyoeWo6CE+Z1cS4URkpgpT+Ljjz7FBA="
								"schema.cue":         "tJG6OC62CdVf0gga/SDWwbSYDA9P4UapKxuX7GyABqc="
								"split_pea.yml":      "E6ez7WsVnKoQKtEwLW/LNdXqx/ZFl5FNClAFaki4FL0="
								"pomodoro.yml":       "UQL53mockTTEvw3a7ueztOg4AtDfUObZVq06aDAmznc="
								"pomodoro.yml fixed": "FdWnGV8Dcr6yo8dkj/sJv8U4OLAX4E396S/ggkrEViQ="
							}
							multi_step: {
								hash:       "BRAQTGJA9U2DV5838I64RVCC42PVNKFP8MD98JIPQ9AJLKDQHBK0===="
								scriptHash: "S1P1N4BEQ13PVKLHR7S49GT6BCDNEBPHJ3GI7AJEV2HUL129L28G===="
								steps: [{
									doc:      "#ellipsis 1"
									cmd:      "cue version"
									exitCode: 0
									output: """
											cue version v0.12.1
											...

											"""
								}, {
									doc:      ""
									cmd:      "cue import -l '#restaurant:' -p cuisine schema.json"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cp schema.cue .schema.cue"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "diff -u .schema.cue schema.cue"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cue vet -c -d '#restaurant' schema.cue *.yml"
									exitCode: 1
									output: """
											tables.0.seats: invalid value 100 (out of bound <=10):
											    ./schema.cue:13:17
											    ./pomodoro.yml:4:12

											"""
								}, {
									doc:      ""
									cmd:      "cue vet -c -d '#restaurant' schema.cue *.yml"
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
