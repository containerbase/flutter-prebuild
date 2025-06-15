

FROM ghcr.io/containerbase/base:13.8.41@sha256:78888c1d58a555a4b98077be3a1dfaaffd01a7db813dd9b00f66e564cf4a5cbc


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
