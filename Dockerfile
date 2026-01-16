

FROM ghcr.io/containerbase/base:13.26.2@sha256:c756d0acc372c1ab80fda67bfd5ef53fa27516018bab44a9a06d17addee94fea


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
