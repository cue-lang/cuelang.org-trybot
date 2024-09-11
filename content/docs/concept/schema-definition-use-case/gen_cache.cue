package site
{
	content: {
		docs: {
			concept: {
				"schema-definition-use-case": {
					page: {
						cache: {
							upload: {
								"api-cue": "BPPk67u8uzYorFY6pX/N6lc7Ddg6TmuOMALX0SqGq1w="
								"api-go":  "FaJAAOxnOn4CBjvHNS8vpB8hLSOeC7/25mT0/4rMNFE="
							}
							code: {
								"openapi-comparison": "bxIJflPtxiwdSpR9Iqhqt1dhddRh4n7l3SC1s2IMveE="
							}
							multi_step: {
								hash:       "D9D5PT9N6AS6754R6KKPA75467681ACQ7NQALH22B2854VUJ6V40===="
								scriptHash: "J9HICURACUE1FIJJL8UFK71O2GKLIJ7M8RDIJ5FE4ISE0UMN4L40===="
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
									cmd:      "go get cuelang.org/go@v0.11.0-alpha.1.0.20240911091416-d34eb577f82d"
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
								}]
							}
						}
					}
				}
			}
		}
	}
}
