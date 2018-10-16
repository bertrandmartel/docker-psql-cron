#!/bin/bash

echo "db : $POSTGRES_URL"
printenv | sed 's/^\(.*\)\=\(.*\)$/export \1\="\2"/g'  > /root/project_env.sh
chmod +x /root/project_env.sh
cron && tail -f /var/log/cron.log