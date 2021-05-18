#!/bin/bash
echo "==============================================="
echo "=             Making scripts runable          ="
echo "==============================================="

chmod +x /var/lib/cloud/scripts/per-instance/01-run-appwrite.sh /etc/update-motd.d/99-appwrite-readme

echo "==============================================="
echo "=             Pulling docker images             ="
echo "==============================================="

echo "pulling appwrite docker images"

docker pull dlohani/appwrite:0.8.0
docker pull traefik:2.3
docker pull appwrite/mariadb:1.2.0
docker pull redis:6.0-alpine3.12
docker pull influxdb:1.8-alpine
docker pull appwrite/telegraf:1.0.0

