FROM alpine

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.1
ENV CONTAINER_NAME frapsoft/nmap
ENV CONTAINER_REPO https://github.com/ellerbrock/nmap-docker

USER root

RUN apk update && \ 
    apk upgrade && \
    apk add --no-cache nmap

ENTRYPOINT ["nmap"]
CMD ["--help"]

