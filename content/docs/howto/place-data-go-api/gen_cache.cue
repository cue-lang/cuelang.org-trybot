package site
{
	content: {
		docs: {
			howto: {
				"place-data-go-api": {
					page: {
						cache: {
							upload: {
								"initial cue code": "nwA1wHgg1kC/YInTw5fbwmZv+BX8ckXf/DY8OKH3Qcw="
								"go program":       "fKVjMSF+ey0CgkqL6F/TBDgwu++h5BBLycfB9AEiIY0="
							}
							multi_step: {
								hash:       "45GJ88CL9GB4HSBEGR0M3OAUAQJ9D0QE397JSJJH4IRCOO6S0PL0===="
								scriptHash: "5S2TBUCQSJ5HLPP8KK7GH93ONCI5PRA1ULKK57RQH08CP84UT29G===="
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
									cmd:      "cue mod init cue.example"
									exitCode: 0
									output:   ""
								}, {
									doc:      "#ellipsis 0"
									cmd:      "go mod init go.example"
									exitCode: 0
									output: """
											...

											"""
								}, {
									doc:      ""
									cmd:      "cue export . input.json --path input: -e output --out text"
									exitCode: 0
									output: """
											Hello, Charlie!
											How's the weather in your part of the world?

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
											Hello, Charlie!
											How's the weather in your part of the world?

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
