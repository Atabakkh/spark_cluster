#!/bin/bash

nohup spark-class org.apache.spark.deploy.worker.Worker  --webui-port 8080 spark://pysparkmaster:7077 &>/dev/null &
