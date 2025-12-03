

FROM ghcr.io/containerbase/base:13.25.6@sha256:2423db7f08b72f552b9b03a155e8ff953ef7bbe9d767ca219cca859c46781746


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
