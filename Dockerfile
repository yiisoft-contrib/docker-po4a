FROM alpine:3.23.2

# hadolint ignore=DL3018
RUN apk add --no-cache \
    perl \
    perl-yaml-tiny \
    perl-syntax-keyword-try \
    gettext \
    diffutils

RUN wget -nv https://github.com/mquinson/po4a/releases/download/v0.73/po4a-0.73.tar.gz \
    && mkdir /po4a \
    && tar -xzf po4a-0.73.tar.gz -C /po4a --strip-components=1 \
    && rm po4a-0.73.tar.gz

ENV PERL5LIB=/po4a/lib

ENTRYPOINT [ "/po4a/po4a" ]
