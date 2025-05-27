#!/bin/sh
set -e
DATA_DIR=.devcontainer/data
PG_PERM=999
PGA_PERM=5050
sudo chown $(id -u):$(id -g) $DATA_DIR/postgres/.gitkeep $DATA_DIR/pgadmin/.gitkeep
echo 1/4
sudo chmod 755 $DATA_DIR/postgres $DATA_DIR/pgadmin
echo 2/4
sudo chown $PG_PERM:$PG_PERM $DATA_DIR/postgres/pgdata
echo 3/4
sudo chown $PGA_PERM:$PGA_PERM $DATA_DIR/pgadmin
echo 4/4
uname -a && psql --version