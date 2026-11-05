

FROM ghcr.io/containerbase/base:14.66.1@sha256:556f8a473cefba14b7942a140a1900beb3bc178dd36e0e129961c18933e7ae11


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
