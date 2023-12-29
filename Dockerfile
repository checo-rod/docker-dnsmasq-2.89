FROM alpine:3.18

RUN apk --no-cache add dnsmasq=2.89-r5 openjdk17 bind-tools

COPY entrypoint.sh /opt/entrypoint.sh

RUN chmod 755 /opt/entrypoint.sh

# Start dnsmasq, write log items to container console
ENTRYPOINT ["/opt/entrypoint.sh"]
~
