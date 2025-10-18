

FROM ghcr.io/containerbase/base:13.23.2@sha256:2a0470066e3082770b8cc3e0307271560aabb25ce2f426be341c37c1fe525349


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
