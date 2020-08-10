#!/bin/bash

echo "> Knex running"
cd core
node -r dotenv/config ./node_modules/knex/bin/cli.js migrate:latest dotenv_config_path=../.env
node -r dotenv/config ./node_modules/knex/bin/cli.js seed:run dotenv_config_path=../.env
echo "> Knex finished"
