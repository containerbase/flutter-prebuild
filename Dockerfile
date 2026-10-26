

FROM ghcr.io/containerbase/base:14.52.7@sha256:ec439441226e331b8cc67f666a7730dd9aa574bab41d6036913097291efc4255


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
