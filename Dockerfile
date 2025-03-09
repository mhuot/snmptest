FROM alpine:${ALPINE_VERSION:-3.20}

RUN apk add --update --no-cache net-snmp net-snmp-tools envsubst tcpdump

COPY entrypoint.sh /

EXPOSE 161/udp

ENTRYPOINT ["/entrypoint.sh"]