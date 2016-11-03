FROM alpine

MAINTAINER Maik Ellerbrock <opensource@frapsoft.com>

USER root

RUN apk update && \ 
    apk upgrade && \
    apk add --no-cache nmap
