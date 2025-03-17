#!/bin/bash
cd /home/my-app
docker-compose stop web
certbot renew --standalone
cp /etc/letsencrypt/live/braveapp.duckdns.org/fullchain.pem /home/my-app/certs/
cp /etc/letsencrypt/live/braveapp.duckdns.org/privkey.pem /home/my-app/certs/
chown my-app:my-app /home/my-app/certs/*
docker-compose start web
