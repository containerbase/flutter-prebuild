

FROM ghcr.io/containerbase/base:13.8.35@sha256:6cb30245c05e1b37f16cb111c138cfb7812ceb8888597380d41719334d777bfb


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
