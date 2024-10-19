

FROM ghcr.io/containerbase/base:12.0.8@sha256:4c972bdc114bd049c41ac7ecbf5f50d19d4a202f7837bf2f0b5b6a3bae7ff407


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
