

FROM ghcr.io/containerbase/base:13.10.13@sha256:3382ec851fd86a715711a82ec2f5c935c003d3cee037d08bc7e80617e464a398


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
