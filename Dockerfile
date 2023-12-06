

FROM ghcr.io/containerbase/base:9.29.0@sha256:181b7feb719da85a2f65653566b3947702365f0115dc3eb8ebfe12051e7cebb8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
