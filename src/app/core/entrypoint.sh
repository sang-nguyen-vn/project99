#!/bin/sh
echo '{
  "POD_NAME": "'$POD_NAME'",
    "NODE_NAME": "'$NODE_NAME'"
    }' > /usr/share/nginx/html/env.json

    # Khởi động Nginx
    exec nginx -g "daemon off;"

exit 0
