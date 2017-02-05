#!/bin/bash

if [ "$_cdaSourcePath" == "" ]; then
  _cdaSourcePath="${BASH_SOURCE[0]}"
  _cdaSourcePathDir=`dirname "$_cdaSourcePath"`
fi

source "$_cdaSourcePathDir/bootstrap.sh"

for file in "${_cdaFiles[@]}"
do
  source "$file"
done
