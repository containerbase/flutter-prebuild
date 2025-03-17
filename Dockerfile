

FROM ghcr.io/containerbase/base:13.8.6@sha256:bc2b203b2193ba7de7df5424f8275afd5ee35fb134f1add80c6794bebada177f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
