

FROM ghcr.io/containerbase/base:14.13.10@sha256:4b9a4c5f60e19ba6cd11cfece3020eb4f13709d15c9150f770be92c73dc38457


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
