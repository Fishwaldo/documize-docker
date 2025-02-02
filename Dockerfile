FROM alpine:3.16
ARG TARGETARCH
RUN apk add --no-cache ca-certificates wget && wget https://community-downloads.s3.us-east-2.amazonaws.com/documize-community-plus-linux-${TARGETARCH} -O /documize && chmod 777 ./documize
EXPOSE 5001
ENTRYPOINT [ "./documize" ]
