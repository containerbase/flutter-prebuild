

FROM ghcr.io/containerbase/base:10.3.16@sha256:53e15cc9c5b3d509cd24168cb3f5aca03be66a08f2668fc80ee6d75b661e69bb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
