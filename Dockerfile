

FROM ghcr.io/containerbase/base:11.11.6@sha256:839d6d28eada75d9bfb5b55ba2a0e3e1bb687905bbfce2961f68789509d7380c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
