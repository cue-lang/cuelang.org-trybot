package site
{
	content: {
		docs: {
			reference: {
				command: {
					"cue-help": {
						page: {
							cache: {
								multi_step: {
									hash:       "TCM8ON0H718ODB3JDOFNAI4CE574G339J9VOJRKLP4FLN4VG2EV0===="
									scriptHash: "HKNLBIPRHJ048SB0H2DNN6CRVLIOEJAAT0QNMF7C14QQ7LCSSASG===="
									steps: [{
										doc:      ""
										cmd:      "export PATH=/cues/v0.12.1:$PATH"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue help"
										exitCode: 0
										output: """
												CUE makes it easy to validate data, write schemas,
												and ensure configurations align with policies.

												CUE works with a wide range of tools and formats that you're already using
												such as Go, JSON, YAML, OpenAPI, and JSON Schema.

												For more information and documentation, see: https://cuelang.org

												Available Commands:
												  cmd         run a user-defined workflow command
												  completion  Generate completion script
												  def         print consolidated definitions
												  eval        evaluate and print a configuration
												  export      output data in a standard format
												  fix         rewrite packages to latest standards
												  fmt         formats CUE configuration files
												  get         add non-CUE dependencies to the current module
												  import      convert other formats to CUE files
												  login       log into a CUE registry
												  mod         module maintenance
												  trim        remove superfluous fields
												  version     print CUE version
												  vet         validate data

												Use "cue help [command]" for more information about a command.

												Additional help topics:
												  cue help commands       user-defined commands
												  cue help embed          file embedding
												  cue help environment    environment variables
												  cue help filetypes      supported file types and qualifiers
												  cue help flags          common flags for composing packages
												  cue help injection      inject files or values into specific fields for a build
												  cue help inputs         package list, patterns, and files
												  cue help modules        module support
												  cue help registryconfig module registry configuration

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
}
