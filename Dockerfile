

FROM ghcr.io/containerbase/base:11.11.18@sha256:1fee4f92a7a5d34bcd867904085da11f53354f05cb456004195523695dea182b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
