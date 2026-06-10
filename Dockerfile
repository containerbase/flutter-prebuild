

FROM ghcr.io/containerbase/base:14.10.25@sha256:1e0c0f168566861b19eafcac956b46d24ccf608cbb128d16b53b8d53657b5819


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
