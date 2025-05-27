#!/bin/sh
set -e

DATA_DIR=".devcontainer/data"
BCK_DIR=".devcontainer/backups"

# PgAdmin Backup
SRC_PGADMIN="$DATA_DIR/pgadmin/pgadmin4.db"
BCK_PGADMIN="$BCK_DIR/pgadmin4-last.db"

sudo cp "$SRC_PGADMIN" "$BCK_PGADMIN" && echo "Backup de PgAdmin guardado en $BCK_PGADMIN"

set -a
source .devcontainer/.env
set +a

# Postgres Backup
BCK_PG="$BCK_DIR/postgres-last.dump"
pg_dump -Fc --file $BCK_PG && echo "Backup de Postgres guardado en $BCK_PG"

sudo chown -R $(id -u):$(id -g) $BCK_DIR

