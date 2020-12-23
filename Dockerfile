FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /root

RUN apt-get --yes update && \
  apt-get --yes install curl gputils

RUN curl -L -o sdcc-4.0.0-amd64-unknown-linux2.5.tar.bz2 \
  https://sourceforge.net/projects/sdcc/files/sdcc-linux-amd64/4.0.0/sdcc-4.0.0-amd64-unknown-linux2.5.tar.bz2/download

RUN mkdir -p /opt/sdcc && \
  tar fvx sdcc-4.0.0-amd64-unknown-linux2.5.tar.bz2 -C /opt/sdcc --strip-components=1 && \
  rm sdcc-4.0.0-amd64-unknown-linux2.5.tar.bz2

ENV PATH /opt/sdcc/bin:$PATH

ENTRYPOINT ["sdcc"]
