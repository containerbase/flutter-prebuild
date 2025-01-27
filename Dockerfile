

FROM ghcr.io/containerbase/base:13.7.2@sha256:75f08add5b90da955d341b2cd95759b744554e4f2b253e85fe79fed3517c5a6d


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
