#!/bin/bash

set -e

docker build -t pysparkbase:1.0.1 .
docker build -t pysparkmaster:1.0.1 ./pyspark-master
docker build -t pysparkworker:1.0.1 ./pyspark-worker
#docker build -t spark-submit:2.3.1 ./spark-submit

