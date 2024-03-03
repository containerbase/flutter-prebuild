

FROM ghcr.io/containerbase/base:10.2.2@sha256:0b4ecadf84d0a9cd3ace806c056b646859ed827e32749d1b785b851a9411b71c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
