

FROM ghcr.io/containerbase/base:14.53.0@sha256:295eb80a48fe8a2e21911fa382172e29ed336b1e13901d7ad1c4166f720151f1


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
