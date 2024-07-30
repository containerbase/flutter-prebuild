

FROM ghcr.io/containerbase/base:11.4.0@sha256:6d17e17388fbf6f93c887ca87fb48680570309f87f670fee2eba6bf047df2389


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
