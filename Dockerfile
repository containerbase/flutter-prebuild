

FROM ghcr.io/containerbase/base:14.14.9@sha256:4c2d6abe9273450ed8f04f65411486315e8fb19db0da6a5745f5825e36b030e8


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
