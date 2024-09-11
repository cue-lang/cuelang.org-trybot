package site
{
	content: {
		docs: {
			concept: {
				"how-cue-enables-data-validation": {
					page: {
						cache: {
							upload: {
								"data: alex":                    "Xw2EVfMIWfM6VjBeYs/J86XaGKL1TKPj1QPw9sEgdds="
								"data: bryn (broken)":           "6FXiNsEAIntTsg5NlSV22pnniJw2nLQAtfIPz5aV4ZI="
								"data: charlie":                 "BEle37syWAfgUB51Qe152hNDhx9Y5gOLaUcTTfxZYkA="
								"schema: CUE":                   "I3mrkV6VQ+kMXh3FnCAlX6kI0bWogByEm+CU2Geapj8="
								"data: bryn (fixed)":            "5qafMeDoDlxkdxyBGNgeCPwlpDqh7ztO/A4dInq+GAI="
								"data: alex (reminder)":         "SeyYSYmgnAlRN1MQqs2v3DMzJGuiTqsHkY5pG+unpTg="
								"data: bryn (reminder)":         "X3pXxIIxQBbMqpVETY2CeQTh+NvLycAOkM1jeVuL82I="
								"data: charlie (reminder)":      "0SKpNUESItrkd+GFLTQwgIQYedp6bvJUbddMK8of8mk="
								"schema: CUE (reminder)":        "7CUNhofYAoEW/6pcL4w4mSKkaxuelZAWYW8uWAoUn28="
								"policy: CUE (too restrictive)": "3DlJaSaXvCJ+wNG0U8X/dfHxyOEBObzJZhm3LqRUQFI="
								"policy: CUE (correct)":         "QV3EYhT7YGB1wMuXDapYeOQupkVo1IMweabmWns/zIE="
								"schema.proto":                  "tUR0JIWyyUZpZw2lnry2KEgzM8t/LoQ2CyenPPabbbY="
								"schema.json":                   "yBW8IIjoAPmHfdvbDJZ1xlxFYu1uy09YZEx0MRIEWQs="
								"policy.cue":                    "LstjqzO6xDOo474iUIwttCc/fALANsxDi9ABS+AqVks="
								"data.yml (broken)":             "vTpYNIPpSlk2E5IQA0z1NczvLJIEZCMCszUAUTzWV0k="
								"data.yml (fixed)":              "SewxEAutxyMiDmafc4a75jhg0hbePuOt9C+z1BXnsxs="
							}
							code: {
								constraints: "H97B9dFF2saTupymsTe/e/SoTFQjzhuV5+mcuOsjPgY="
								definition:  "ds98v5nnhu3Tm+/B5T36Js2ctJH48K/zvycXIbvX6v4="
							}
							multi_step: {
								hash:       "A0B2JC8LR2DV13D0333Q79O4TK9LF8KQIJV1R485TOSK8HU6PK40===="
								scriptHash: "5IRU0HUMAKN4O1TE41F2439MMECK8AS890TU89R3REV16HVJRUN0===="
								steps: [{
									doc:      ""
									cmd:      "cue vet . alex.json bryn.json charlie.yaml"
									exitCode: 1
									output: """
											height: conflicting values "2" and int (mismatched types string and int):
											    ./bryn.json:4:15
											    ./schema.cue:5:10

											"""
								}, {
									doc:      ""
									cmd:      "cue vet . alex.json bryn.json charlie.yaml"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cue vet . alex.json bryn.json charlie.yaml"
									exitCode: 1
									output: """
											type: 2 errors in empty disjunction:
											type: conflicting values "cat" and "goldfish":
											    ./bryn.json:3:13
											    ./policy.cue:3:18
											type: conflicting values "dog" and "goldfish":
											    ./bryn.json:3:13
											    ./policy.cue:3:10
											height: invalid value 2 (out of bound >10):
											    ./policy.cue:4:10
											    ./bryn.json:4:15

											"""
								}, {
									doc:      ""
									cmd:      "cue vet . alex.json bryn.json charlie.yaml"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "rm -f *.cue *.yml *.yaml *.json"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cue vet policy.cue schema.proto schema.json data.yml -d '#ExampleType'"
									exitCode: 1
									output: """
											aBool: conflicting values "this is not a boolean value" and bool (mismatched types string and bool):
											    ./data.yml:4:8
											    ./schema.proto:5:3
											aString: invalid value "Doesn't start with 'Multiplication', and doesn't contain the square of anInt" (does not satisfy strings.Contains("25")):
											    ./policy.cue:6:12
											    ./data.yml:1:10
											    ./policy.cue:6:29
											    ./schema.json:9:21
											    ./schema.proto:2:3
											anInt: invalid value 5 (out of bound >99.0):
											    ./policy.cue:9:10
											    ./data.yml:2:8
											aString: invalid value "Doesn't start with 'Multiplication', and doesn't contain the square of anInt" (out of bound =~"^Multiplication"):
											    ./schema.json:9:21
											    ./data.yml:1:10
											    ./policy.cue:6:12
											    ./schema.proto:2:3

											"""
								}, {
									doc:      ""
									cmd:      "cue vet policy.cue schema.proto schema.json data.yml -d '#ExampleType'"
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
