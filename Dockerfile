

FROM ghcr.io/containerbase/base:14.10.1@sha256:507b9d455ea84fc6a4c4c94297be298117a80b9bf8cf6c0d42f2874f61869f78


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
