

FROM ghcr.io/containerbase/base:13.0.18@sha256:7c70fe961f582bbe0581067322d466191042317eaa26602a626c8a8d4980955b


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
