

FROM ghcr.io/containerbase/base:14.12.9@sha256:8a4f204c7aaa0b1a3eda4387e456c64e12513119638879d8353972c4fe77bc4e


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
