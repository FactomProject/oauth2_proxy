FROM golang:1.9-alpine as builder

# Build oauth2_proxy
RUN set -x \
    && apk add --no-cache curl git \
    && go get github.com/bitly/oauth2_proxy

# Now squash everything
FROM alpine:3.6

# Get curl
RUN apk add --no-cache ca-certificates curl

RUN mkdir -p /srv /go/bin /go/src /go/pkg

COPY --from=builder /go/bin/oauth2_proxy /go/bin/oauth2_proxy

CMD ["/go/bin/oauth2_proxy", "-config=/srv/oauth2_proxy.conf"]

EXPOSE 4180 443

