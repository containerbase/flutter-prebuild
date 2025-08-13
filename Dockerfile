

FROM ghcr.io/containerbase/base:13.8.65@sha256:948e09d87b2a0abace8af72f602134cf96c9ba6c22530e62d29f826e3eae30a7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
