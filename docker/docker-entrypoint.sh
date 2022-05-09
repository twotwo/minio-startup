#!/bin/sh

set -e

# Cater for legacy version of image that required a bind mount of the host's
# /etc/hostname onto /etc/docker-hostname inside the container
if [ -s /etc/docker-hostname ]; then 
    NODE_NAME=$(cat /etc/docker-hostname)
fi

# Add 'Node Name' to static HTML page if NODE_NAME has been set
if [ ! -z ${NODE_NAME+x} ]; then
    sed -i '/<h2>Version/ i <h2>Node Name: '"$NODE_NAME"'<\/h2>' ./index.html
fi

# Exec what has been supplied as arguments for the container/pod
# (default: "/usr/local/nginx/sbin/nginx", "-g", "daemon off;")
exec "$@"