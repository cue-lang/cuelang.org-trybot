package site
{
	content: {
		docs: {
			draft: {
				cldd: {
					"5-minutes-with-k8s-io": {
						page: {
							cache: {
								upload: {
									"1": "sa7vCkHCEc2d52HsHmcdZGSaw2QQdtn6hLB5muH0xu0="
								}
								multi_step: {
									hash:       "BB6N6CU65KO9UO92NSUO3DN1F12IK2V02LAPARSGS6P8QBRAFSIG===="
									scriptHash: "AKQJBFIOFSP4VHKKRF9R5DJMS6EC5TH788QLJ75DCPBCBKVE84A0===="
									steps: [{
										doc:      ""
										cmd:      "mkdir -p $HOME/.config/cue"
										exitCode: 0
										output:   ""
									}, {
										doc: ""
										cmd: """
												cat <<EOD >$HOME/.config/cue/logins.json
												{"registries":{"registry.cue.works":{"access_token":"${TEST_USER_AUTHN_CUE_USER_NEW}","token_type":"Bearer"}}}
												EOD
												"""
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue mod init"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue mod tidy"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue vet .:k8s"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cue export .:k8s --outfile manifest.yml"
										exitCode: 0
										output:   ""
									}, {
										doc:      ""
										cmd:      "cat manifest.yml"
										exitCode: 0
										output: """
												apiVersion: apps/v1
												kind: Deployment
												metadata:
												  labels:
												    app: example1
												  name: example1
												spec:
												  replicas: 1
												  selector:
												    matchLabels:
												      app: example1
												  template:
												    metadata:
												      labels:
												        app: example1
												    spec:
												      containers:
												        - image: nginx:latest
												          name: nginx

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
