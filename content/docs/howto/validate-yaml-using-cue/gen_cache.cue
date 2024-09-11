package site
{
	content: {
		docs: {
			howto: {
				"validate-yaml-using-cue": {
					page: {
						cache: {
							upload: {
								"initial x.yaml": "rA0nA8/UyRmv8YKSGlTqgqab5H0K0/tXtnCvW65SzKo="
								"initial x.cue":  "71Z2KvLz1eZxGVQC7c7NIutf3AW7rUb4+UWz5fKlZRs="
								"another person": "k5hTpJc8tT3/8GgnMXmOyUKzd6nJ0JvkJaAcCnFkk0c="
								"fixed yaml":     "GAZLAF3TvciY1CZy4EQU+jTI72Rq6Z/+3Iq+kkyX6Ww="
							}
							multi_step: {
								hash:       "UMA4U67OP2FBTASI86C9BRHITASJOPRBAHGGTVFQREI6GO0DKC6G===="
								scriptHash: "7O25FPHJVUHC297BLS0S5A0O6M4E37ITUK3M1O5FHBH097GTHAAG===="
								steps: [{
									doc:      ""
									cmd:      "cue vet x.cue x.yaml"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cue vet x.cue x.yaml"
									exitCode: 1
									output: """
											people.Rob.age: conflicting values 42.2 and int (mismatched types float and int):
											    ./x.cue:3:11
											    ./x.cue:7:21
											    ./x.yaml:12:10

											"""
								}, {
									doc:      ""
									cmd:      "cue vet x.cue x.yaml"
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
