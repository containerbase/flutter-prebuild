

FROM ghcr.io/containerbase/base:9.30.10@sha256:8e666ee10834c70f7c854eaf062f0992604ce851f9a6bb63cbbc12fdd8fa7a29


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
