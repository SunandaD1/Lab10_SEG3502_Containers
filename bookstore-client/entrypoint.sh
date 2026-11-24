#!/bin/sh

# Replace placeholder with actual environment variables
envsubst < /usr/share/nginx/html/assets/env.template.json > /usr/share/nginx/html/assets/env.json

# Start Nginx
exec nginx -g 'daemon off;'