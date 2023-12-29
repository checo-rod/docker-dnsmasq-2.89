#!/bin/sh
# /opt/entrypoint.sh

echo "Starting DNSMASQ dns server ..."
dnsmasq

# The java library is mounted from the host filesystem into the container as volume
echo "Starting Sock5 Proxy server..."
java -jar /socks5-tunnel/Socks5Tunnel-0.0.1-SNAPSHOT-shaded.jar
