

FROM ghcr.io/containerbase/base:13.0.26@sha256:904f072bd2ee435e97fdaa4d6abf7546d81dc93277335fa48910de910e9ef877


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
