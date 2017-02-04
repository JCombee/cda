#!/bin/bash

echo Start bootstrapping build process

_cdaFiles+=("`pwd`/src/init.sh")
_cdaFiles+=("`pwd`/src/*_controller.sh")
_cdaFiles+=("`pwd`/src/router.sh")

echo End bootstrapping build process
