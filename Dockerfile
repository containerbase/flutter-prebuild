

FROM ghcr.io/containerbase/base:11.11.9@sha256:a7101cc6aefc500f72d990ace17539c6f3ce17dd236d762992bfcd5b246d1f3d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
