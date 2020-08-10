#!/bin/bash

echo "> Knex running"
cd core
node -r dotenv/config ./node_modules/knex/bin/cli.js migrate:rollback --all dotenv_config_path=../.env
echo "> Knex finished"
