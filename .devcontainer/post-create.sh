#!/bin/sh
set -e
DATA_DIR=.devcontainer/data
sudo chmod 755 $DATA_DIR/postgres $DATA_DIR/pgadmin
sudo chown $(id -u):$(id -g) $DATA_DIR/postgres/.gitkeep $DATA_DIR/pgadmin/.gitkeep
uname -a && psql --version