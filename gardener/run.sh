#!/usr/bin/env bash

export cloud=$1

bash create.sh $cloud
bash test.sh $cloud
bash destroy.sh $cloud
