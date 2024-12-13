

FROM ghcr.io/containerbase/base:13.4.2@sha256:0f8267aa4fc0a7e99c2475074930abab0bb181d5cb71c2fa434feb35d1afa4a4


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
