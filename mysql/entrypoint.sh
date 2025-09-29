#!/bin/bash

if [ -n "$MYSQL_ROOT_PASSWORD" ]; then
    echo "Using MYSQL_ROOT_PASSWORD from environment"
else
    echo "MYSQL_ROOT_PASSWORD not set!"
    exit 1
fi

exec /entrypoint.sh mysqld
