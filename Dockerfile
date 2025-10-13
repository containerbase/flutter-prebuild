

FROM ghcr.io/containerbase/base:13.20.3@sha256:54e80bd57911026f67ba50317f9de281e6359b020feeb2bfaf40e33bfae94b8c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
