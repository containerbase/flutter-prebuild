

FROM ghcr.io/containerbase/base:13.25.17@sha256:8539dc9e33f49dc3c1f6ac4ccdd73de69cb92fde5f90e204c6256447a5a0b61f


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
