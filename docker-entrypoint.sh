#!/bin/sh

# Replace env vars in the template and output to actual config
envsubst '${TEAMSPEAK_HOST}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start nginx in foreground
nginx -g 'daemon off;'
