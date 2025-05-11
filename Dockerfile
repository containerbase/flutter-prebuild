

FROM ghcr.io/containerbase/base:13.8.25@sha256:5b86523557958759ea2b0878607cede6da6c5912b79f6f3acece4bc0ff214fa9


ENTRYPOINT [ "dumb-init", "--", "builder.sh" ]

COPY bin /usr/local/bin

RUN install-builder.sh
