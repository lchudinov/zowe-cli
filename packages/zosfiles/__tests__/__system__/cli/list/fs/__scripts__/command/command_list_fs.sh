#!/bin/bash
one=$1
two=$2
thr=$3
set -e

zowe zos-files list fs $1 $2 $3
if [ $? -gt 0 ]
then
    exit $?
fi