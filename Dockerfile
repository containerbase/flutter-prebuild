

FROM ghcr.io/containerbase/base:14.10.17@sha256:9c8bfe65ac1041cbf3f0c22dafefc2385e129067948286cccc7f287e66b01c93


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
