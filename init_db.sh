#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE ROLE apibook WITH LOGIN PASSWORD 'apibook';
    CREATE DATABASE apibook WITH TEMPLATE = template0 OWNER = apibook ;
EOSQL