

FROM ghcr.io/containerbase/base:10.11.5@sha256:05dab0c553364ed09dfad04528be82c57007778f1f9def5e47498ee03484a1ba


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
