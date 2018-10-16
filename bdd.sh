#!/bin/bash

echo "executing TTL"

psql $POSTGRES_URL << EOF
    delete from "mytable" where "mytable"."expirationDate" < now()
EOF