

FROM ghcr.io/containerbase/base:13.8.11@sha256:93f5069ba3f0c547074a622db51a5c2c22df2fe9dd258b596888183ee439c31d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
