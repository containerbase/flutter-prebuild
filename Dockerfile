

FROM ghcr.io/containerbase/base:10.6.4@sha256:95e3c9b78d784df183933f387b2289495bc36a029fb7521e22f78b589110d1f9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
