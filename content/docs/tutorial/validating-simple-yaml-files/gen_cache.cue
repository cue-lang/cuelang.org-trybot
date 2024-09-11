package site
{
	content: {
		docs: {
			tutorial: {
				"validating-simple-yaml-files": {
					page: {
						cache: {
							upload: {
								yamlBroken: "TKcojuFSazFQvxm9bwLX8R8QnfalXyw8jHJJPh5nP2Q="
								"pets.cue": "/zcxeQvg9w1rNYAxnGgZuKzlgaWFdjqS0S2e9hb+65s="
								yamlFixed:  "we1po+H7cx0I3g4iI/5hpY4nN7ODdggj/st8VDwSZV8="
								yaml2:      "QNexyZEftYuYAICRdmF4n9CUbISuQo9y+TsNHV8d14I="
							}
							multi_step: {
								hash:       "TLVAJ5JKHL9EN0TK6QSO7KNFQI4V3PA8KF1SSHP6DN96R4MIUNL0===="
								scriptHash: "CT8B9VRADUB82ORG7R3FRB2UVANK87TJ8JQR8JAOKTIAA4J9721G===="
								steps: [{
									doc:      ""
									cmd:      "pwd # we start in our home directory, but you do not need to"
									exitCode: 0
									output: """
											/home/runner

											"""
								}, {
									doc:      ""
									cmd:      "mkdir validating-yaml-with-cue"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cd validating-yaml-with-cue"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cue vet pets.cue charlie.yml"
									exitCode: 1
									output: """
											age: conflicting values "15" and number (mismatched types string and number):
											    ./charlie.yml:5:6
											    ./pets.cue:2:11
											species: 2 errors in empty disjunction:
											species: conflicting values "cat" and "goldfish":
											    ./charlie.yml:4:10
											    ./pets.cue:1:11
											species: conflicting values "dog" and "goldfish":
											    ./charlie.yml:4:10
											    ./pets.cue:1:19

											"""
								}, {
									doc:      ""
									cmd:      "cue vet pets.cue charlie.yml"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cue vet pets.cue charlie.yml toby.yml"
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
