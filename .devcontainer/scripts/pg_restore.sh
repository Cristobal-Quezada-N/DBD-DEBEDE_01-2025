#!/bin/sh
set -e

DATA_DIR=".devcontainer/data"
BCK_DIR=".devcontainer/backups"

# PgAdmin Restaurar Backup
SRC_PGADMIN="$DATA_DIR/pgadmin/pgadmin4.db"
BCK_PGADMIN="$BCK_DIR/pgadmin4-last.db"

sudo cp "$BCK_PGADMIN" "$SRC_PGADMIN" && echo "Backup $BCK_PGADMIN de PgAdmin Restaurado"

set -a
source .devcontainer/.env
set +a

# Postgres Restaurar Backup
BCK_PG="$BCK_DIR/postgres-last.sql"
psql --file  $BCK_PG >/dev/null && echo "Backup $BCK_PG de Postgres Restaurado"