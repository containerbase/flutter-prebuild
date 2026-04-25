

FROM ghcr.io/containerbase/base:14.9.2@sha256:68c1d098119a465b2585301ad581a76ff7e1f76342baeffe7bbdf7e59dce1aa9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
