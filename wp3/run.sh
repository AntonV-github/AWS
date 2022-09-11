#!/bin/bash

set -e

# Note: update /etc/hosts separately, may require sudo privileges

# Install mkcert, assumes brew already installed
apt install mkcert

# Initialize and create certificates
mkcert -install
mkdir -p ssl
mkcert -key-file ssl/nginx.key -cert-file ssl/nginx.crt domain.com *.domain.com
#chmod  -R 400 ssl
# Run docker containers as daemons
docker-compose up -d

# Open default browser to https://example.com

#open https://example.com

