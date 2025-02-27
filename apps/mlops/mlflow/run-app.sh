#!/bin/bash

export MLFLOW_EXPERIMENT_NAME='my-sample-experiment'
export MLFLOW_TRACKING_URI='http://192.168.56.7' # change port

python3 -m pip install --upgrade pip

#Create python env
python3 -m venv .venv
source .venv/bin/activate
