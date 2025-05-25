

FROM ghcr.io/containerbase/base:13.8.31@sha256:88a16f312342b1386b70995452437fd2a434cf38bb56194037e87f3e531525c0


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
