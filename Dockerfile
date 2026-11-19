

FROM ghcr.io/containerbase/base:14.68.0@sha256:6b90a46537d7fb06c6b84b48563091fe011d58135cc105a5b4fa4892c4a2aa01


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
