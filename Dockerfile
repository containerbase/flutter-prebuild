

FROM ghcr.io/containerbase/base:14.66.24@sha256:9d6ab87e0a25f7925ff8e5c262043a1907f2847f9c561372b9d9a9eca6bad843


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
