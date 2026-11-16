

FROM ghcr.io/containerbase/base:14.67.0@sha256:647a13f9816980387af246d731c3d0ec9db4611929d0b7367850250f7f1b261d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
