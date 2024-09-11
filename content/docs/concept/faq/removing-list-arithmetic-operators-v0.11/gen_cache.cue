package site
{
	content: {
		docs: {
			concept: {
				faq: {
					"removing-list-arithmetic-operators-v0.11": {
						page: {
							cache: {
								upload: {
									removed:                 "ajCmwj4umXU0b/0XfRQjy95sDv/siJfn5wQViAO+Scg="
									changes:                 "PysQ3NVk/5GamuOKJhefTybtK3wFFqBbbkqDZP0lR90="
									"changes: updated file": "K5oqvz8+hd4WCrtmsU8WWSc7KSZuToC0cBsvY3juO8c="
									"references: broken":    "47OWw3d1m1+OxYWNnqHtN4LOI89u1YzmnCagMIUChuQ="
									"references: fixed":     "cJprLu3+qQOtAQVLVXJgoImf2fxILk8zAIi/HyjadPc="
								}
								multi_step: {
									hash:       "KRKB19H3NDSMV4MJ83V2QV9M6NFLRIEGP2NHV5HGVBGIQU4G3Q4G===="
									scriptHash: "7FL7D91N2M4QVR8TTD7NP9AVG4T7L6NRD8CKOJSPQSAJM97NMH8G===="
									steps: [{
										doc:      ""
										cmd:      "export PATH=/cues/v0.11.0-alpha.1.0.20240911091416-d34eb577f82d:$PATH"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue vet list-arithmetic.cue"
										exitCode: 1
										output: """
												A: Multiplication of lists is superseded by list.Repeat; see https://cuelang.org/e/v0.11-list-arithmetic:
												    ./list-arithmetic.cue:1:4
												B: Addition of lists is superseded by list.Concat; see https://cuelang.org/e/v0.11-list-arithmetic:
												    ./list-arithmetic.cue:2:4

												"""
									}, {
										doc:      ""
										cmd:      "cue fix changes-required.cue"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "mv changes-required.cue .changes-required.cue"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "diff changes-required.cue .changes-required.cue"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue vet references.cue"
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
