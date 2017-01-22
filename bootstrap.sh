#!/bin/bash

FILE_DIR=$(dirname "$0")

_cdaFiles+=($FILE_DIR/src/init.sh)
_cdaFiles+=($FILE_DIR/src/*_controller.sh)
_cdaFiles+=($FILE_DIR/src/router.sh)
