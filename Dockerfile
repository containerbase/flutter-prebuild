

FROM ghcr.io/containerbase/base:13.23.6@sha256:af7c74e000727bfc7641235ddfaabd606270e7e97cd68de95dd1422b8fc8cf00


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
