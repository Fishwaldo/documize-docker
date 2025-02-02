FROM alpine:3.16
RUN apk add --no-cache ca-certificates wget && wget https://community-downloads.s3.us-east-2.amazonaws.com/documize-community-plus-linux-amd64 && chmod 777 ./documize-community-plus-linux-amd64
EXPOSE 5001
ENTRYPOINT [ "./documize-community-plus-linux-amd64" ]