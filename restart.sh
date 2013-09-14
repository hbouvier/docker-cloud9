#!/bin/bash
ID=`cat .cloud9.id`
echo "Resuming Cloud9 ID=$ID"

docker start $ID

