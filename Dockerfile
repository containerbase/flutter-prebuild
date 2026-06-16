

FROM ghcr.io/containerbase/base:14.12.0@sha256:78eef50acdb8a889a413a3aedcd8c07b13f84ce084fae6fb84cc9dc55bbed0d7


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
