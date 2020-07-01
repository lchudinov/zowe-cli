#!/bin/bash
dataSetName=$1
set -e

echo "================Z/OS FILES DELETE MIGRATED DATA SET==============="
zowe zos-files hDelete data-set "$dataSetName" --wait
if [ $? -gt 0 ]
then
    exit $?
fi