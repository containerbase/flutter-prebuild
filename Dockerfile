

FROM ghcr.io/containerbase/base:10.6.7@sha256:22999ddc3c1ae02ec2c12d15500063dfb9b008ce2d819a2ac22b8cb866e5cd73


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
