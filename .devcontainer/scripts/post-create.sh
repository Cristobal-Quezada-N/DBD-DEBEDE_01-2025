#!/bin/sh
set -e
DATA_DIR=.devcontainer/data
PG_PERM=999
PGA_PERM=5050

sudo chmod 755 $DATA_DIR/postgres $DATA_DIR/pgadmin
echo "[1/4] Configurar permisos de Directorios de Postgres y PgAdmin"

sudo chown $PG_PERM:$PG_PERM -R $DATA_DIR/postgres/pgdata
echo "[2/4] Configurar permisos de Directorios de Postgres y PgAdmin"

sudo chown $PGA_PERM:$PGA_PERM -R $DATA_DIR/pgadmin
echo "[3/4] Configurar permisos de Directorios de Postgres y PgAdmin"

sudo chown $(id -u):$(id -g) $DATA_DIR/postgres/.gitkeep $DATA_DIR/pgadmin/.gitkeep
echo "[4/4] Configurar permisos de Directorios de Postgres y PgAdmin"

uname -a && psql --version

