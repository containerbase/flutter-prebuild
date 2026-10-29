

FROM ghcr.io/containerbase/base:14.57.0@sha256:776c077dd0534c22637fd7d8426533e56e8b616d9b4c555f1ca96bc6a08f853a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
