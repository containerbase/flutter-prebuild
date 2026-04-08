

FROM ghcr.io/containerbase/base:14.6.17@sha256:eec8acbb0bc840962127caaf9512e3511ea3ab3638b9403efd7c4971d9d21f2c


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
