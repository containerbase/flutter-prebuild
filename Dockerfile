

FROM ghcr.io/containerbase/base:13.25.7@sha256:fd6c5334a949c4c01eb2a1b5101781d124d29979ee5e4303be070a40f90c7d0a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
