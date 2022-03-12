FROM python:alpine
LABEL maintainer="Ivo Woltring <webmaster@ivonet.nl>"

RUN apk --no-cache add ca-certificates \
	&& pip install httpie httpie-unixsocket \
	&& rm -rf /usr/lib/python*/__pycache__/*.pyc /var/cache/apk/*

ENTRYPOINT [ "http" ]
