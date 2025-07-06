

FROM ghcr.io/containerbase/base:13.8.52@sha256:a77ff546359430da174457c545a4e29e04408fe88bb4500be85797ef11767559


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
