package site
{
	content: {
		examples: {
			cue: {
				preprocessor: {
					page: {
						cache: {
							upload: {
								"upload initial files":   "0+LzaSwMhWsCClJRAfdivJypYM40Dw1ojfeAv7MzTBU="
								"upload additional file": "RdjiDX9sjLxSQQDaedgz5eCiNzF4uyPmbCzmcOXrKMU="
								"a hidden file":          "tiejDqo7FHakQZGVvwaVpqiKvA6tbLBK88F7oX7cOZU="
							}
							code: {
								"a code example": "g0JzVIQSd/QKLw7Ly9XojQJ/CwJOLf5hp5R+xATSNuk="
							}
							multi_step: {
								hash:       "K1CH5QVO1IM5CODV596JVJMQ69K66VLIKC93HA692JS7P5IGMSV0===="
								scriptHash: "1K5IR4L5KQL27R6E7ANJ8AGBNEVTHEJKDL4DS7JRTOBCVG32LFNG===="
								steps: [{
									doc:      ""
									cmd:      "cue eval"
									exitCode: 0
									output: """
											y: 2
											x: 1

											"""
								}, {
									doc:      ""
									cmd:      "cue eval >result.txt"
									exitCode: 0
									output:   ""
								}, {
									doc:      ""
									cmd:      "cat *.txt"
									exitCode: 0
									output: """
											y: 2
											z: 3
											x: 1

											"""
								}, {
									doc:      ""
									cmd:      "grep bar foo.txt"
									exitCode: 0
									output: """
											bar

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
