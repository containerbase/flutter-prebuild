

FROM ghcr.io/containerbase/base:10.15.4@sha256:42aa7bcc9eb13f4620225dd131fc4288dec0aef095bf7044816bfbc7b3c6f911


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
