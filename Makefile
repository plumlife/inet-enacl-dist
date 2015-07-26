build:
	rebar3 compile

start_1:
	erl -boot "$(shell pwd)/extra/start_ssl" \
	-pa _build/default/lib/inet_enacl_dist/ebin \
	-pa _build/default/lib/enacl/ebin \
	-proto_dist inet_enacl \
	-ssl_dist_opt server_certfile "$(shell pwd)/certs/inet_enacl_dist02.crt" \
	-ssl_dist_opt server_keyfile "$(shell pwd)/certs/inet_enacl_dist02.key" \
	-ssl_dist_opt server_secure_renegotiate true \
	-ssl_dist_opt client_secure_renegotiate true \
	-sname redjay

start_2:
	erl -boot "$(shell pwd)/extra/start_ssl" \
	-pa _build/default/lib/inet_enacl_dist/ebin \
	-pa _build/default/lib/enacl/ebin \
	-proto_dist inet_enacl \
	-ssl_dist_opt server_certfile "$(shell pwd)/certs/inet_enacl_dist01.crt" \
	-ssl_dist_opt server_keyfile "$(shell pwd)/certs/inet_enacl_dist01.key" \
	-ssl_dist_opt server_secure_renegotiate true \
	-ssl_dist_opt client_secure_renegotiate true \
	-sname bluejay
