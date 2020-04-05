#!/bin/bash

nohup spark-class org.apache.spark.deploy.master.Master --ip `hostname` --port 7077 --webui-port 8080 &>/dev/null &

