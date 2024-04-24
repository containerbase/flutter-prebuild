

FROM ghcr.io/containerbase/base:10.3.17@sha256:3f58afc059846298e401ec47007917df284a163e653114ffc2b3b8749e95095a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
