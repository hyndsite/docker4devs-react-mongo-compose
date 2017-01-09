#!/usr/bin/env bash

if [[ -e /.firstrun ]]; then
    echo "Running entrypoint.sh"
    /mongo_scripts/entrypoint.sh

   echo "Running first_run.sh"
    /mongo_scripts/first_run.sh
fi

# Start MongoDB
echo "Starting MongoDB..."
/usr/bin/mongod --auth $@