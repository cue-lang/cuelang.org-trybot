package site
{
	content: {
		docs: {
			concept: {
				"schema-definition-use-case": {
					page: {
						cache: {
							upload: {
								"api-cue": "nDsiRcYXBd3xz+2SSGIfQnxXbtuPAWoCCI4Rb5pQg9g="
								"api-go":  "9/4jt4O6ioHqoKk6DezHBzkbdfgjcRmQqOW1AM+fVxc="
							}
							code: {
								"openapi-comparison": "1v6g/ExHkLhVWY5wyBTzuTMxy/ITH7Oaj/2r3OsWHvQ="
							}
							multi_step: {
								hash:       "B88ARV45RPSG8LBTLP6EHEUU3Q3EHOQSIC1F89JCM1OMGAIRJHVG===="
								scriptHash: "SA9S7DHM2OHJBGG0KG57D19NKVJ6C8CATDRICAACFSVP9UL99KAG===="
								steps: [{
									doc:      ""
									cmd:      "export GOMODCACHE=/caches/gomodcache"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "export GOCACHE=/caches/gobuild"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "go mod init cue.example"
									exitCode: 0
									output: """
											go: creating new go.mod: module cue.example
											go: to add module requirements and sums:
											\tgo mod tidy

											"""
								}, {
									doc:      "#ellipsis 0"
									cmd:      "go get cuelang.org/go@v0.12.0"
									exitCode: 0
									output: """
											...

											"""
								}, {
									doc:      "#ellipsis 0"
									cmd:      "go mod tidy"
									exitCode: 0
									output: """
											...

											"""
								}, {
									doc:      ""
									cmd:      "go run ."
									exitCode: 0
									output: """
											V2 is backwards compatible with V1: true
											V3 is backwards compatible with V2: false

											"""
								}, {
									doc:      ""
									cmd:      "go vet ./..."
									exitCode: 0
									output:   ""
								}, {
									doc:      "#ellipsis 0"
									cmd:      "go run honnef.co/go/tools/cmd/staticcheck@v0.5.1 ./..."
									exitCode: 0
									output: """
											...

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
