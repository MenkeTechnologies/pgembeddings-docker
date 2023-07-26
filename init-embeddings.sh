#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE EXTENSION IF NOT EXISTS embedding;
EOSQL

echo "host    all    all    0.0.0.0/0    trust" >> /var/lib/postgresql/data/pg_hba.conf

