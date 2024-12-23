

FROM ghcr.io/containerbase/base:13.5.2@sha256:6457c31a4f2770b0fa9651f743ca7c3e988b263b45a8550a7182ca0b1ad21c52


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
