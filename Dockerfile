

FROM ghcr.io/containerbase/base:12.0.5@sha256:ddd545613fa21e5fb43d4a8475d4b5d8cdf70aac65876d3c0237e73f0fceb84d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
