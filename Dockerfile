

FROM ghcr.io/containerbase/base:9.33.0@sha256:4184e716b8366f55ad44538235db02386b1c891d8df115dccf7c48bd35fc838a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
