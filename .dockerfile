FROM ubuntu:18.04

ARG version=0.4.7

WORKDIR /app
COPY ./playit-linux_64-${version} .
RUN chmod +x playit-linux_64-${version}
RUN ls -a
CMD ./playit-linux_64-${version}