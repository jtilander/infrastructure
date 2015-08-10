#
#
#



all: nginxproxy


# Based on https://hub.docker.com/r/jwilder/nginx-proxy/
nginxproxy:
	docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro --restart=always --name=nginx-proxy jtilander/nginx-proxy
