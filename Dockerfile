

FROM ghcr.io/containerbase/base:14.6.3@sha256:2a059ec3a136722ae17364483a108c3ceb201ce13c06777b948b0fea4ca65045


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
