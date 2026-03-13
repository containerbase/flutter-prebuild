

FROM ghcr.io/containerbase/base:14.6.0@sha256:815ab35943a851c4d6b5f7447189da2fe89871a99299afc837c52e93172ce92a


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
