

FROM ghcr.io/containerbase/base:14.51.2@sha256:c346e2840bb9b8e15445297016bc1b21e5b17350bef689a7a252f3208fd13362


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
