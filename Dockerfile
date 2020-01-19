FROM alpine:latest

RUN apk add --no-cache socat

# EXPOSE ${TCPPROXY_LISTEN_PORT}/tcp remember to run with --expose ${TCPPROXY_LISTEN_PORT}

CMD ["sh", "-c", "socat -d -d TCP-LISTEN:${TCPPROXY_LISTEN_PORT},fork TCP:${TCPPROXY_HOST}:${TCPPROXY_PORT}"]
