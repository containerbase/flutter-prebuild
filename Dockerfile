

FROM ghcr.io/containerbase/base:14.0.12@sha256:160bdb3700f4fd88d9f8fc59920c8afce4e8a85c20fea41cf8cf8eb4b4f1627f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
