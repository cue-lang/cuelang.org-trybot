package site
{
	content: {
		docs: {
			tutorial: {
				"converting-json-schema-to-cue": {
					page: {
						cache: {
							upload: {
								"json schema":        "vB00hy8FYTXjp3zrsW00zY6de1D1//RJDsRY/9DpAJU="
								"schema.cue":         "UA6wrTtPx/vO+q7AseCAHNuLQvP/V9QSHTzYF1bwc88="
								"split_pea.yml":      "1DZkn22BMNJIYAY8qxvPZcPQHNPLNhv1skHo+XS9ztg="
								"pomodoro.yml":       "ju3MXwfpSg1L4S08XUZtZDmXt1e9vn+93Xrw8pr5oQ4="
								"pomodoro.yml fixed": "pLNHVfCNcyn9PyaTgJFYQUMRKIv1BRMPJdIAgchDO6Y="
							}
							multi_step: {
								hash:       "BKR2U1IEKT5IIIH1DKSQGL5NNJ7QF1FCCP0EFBEEA3N76U1PM82G===="
								scriptHash: "KB4BPO7OCPKI6VF8CNIJN5JS65L6MVIO6TQGTDN6KSP4S2F37JSG===="
								steps: [{
									doc:      "#ellipsis 1"
									cmd:      "cue version"
									exitCode: 0
									output: """
											cue version v0.11.0-alpha.1.0.20240911091416-d34eb577f82d
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
									cmd:      "cue vet -d '#restaurant' schema.cue *.yml"
									exitCode: 1
									output: """
											tables.0.seats: invalid value 100 (out of bound <=10):
											    ./schema.cue:10:17
											    ./pomodoro.yml:4:12

											"""
								}, {
									doc:      ""
									cmd:      "cue vet -d '#restaurant' schema.cue *.yml"
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
