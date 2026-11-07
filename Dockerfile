

FROM ghcr.io/containerbase/base:14.66.7@sha256:0e0075e19fe11a2706b15a23dfe06a318ed26503592fbe0820f11ea2cce70f38


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
