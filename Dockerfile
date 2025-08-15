

FROM ghcr.io/containerbase/base:13.8.69@sha256:0c95996454a315ba1c2375fad6240d894730841b167dcd5b5dffa853dfe6147a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
