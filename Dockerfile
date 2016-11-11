FROM alpine

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.2
ENV CONTAINER_NAME frapsoft/nmap
ENV CONTAINER_REPO https://github.com/ellerbrock/nmap-docker

RUN apk update && \
    apk add --no-cache nmap

ENTRYPOINT ["nmap"]
CMD ["--help"]
