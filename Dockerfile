

FROM ghcr.io/containerbase/base:9.23.3@sha256:5171c79230d6f4f587cc779f9eacc88132ed52a55c268d6231665bcfe4200e5d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
