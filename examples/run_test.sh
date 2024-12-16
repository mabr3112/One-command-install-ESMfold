#!/bin/bash
# Check if the current folder is named "examples"
if [ "$(basename "$PWD")" != "examples" ]; then
  echo "You must be in the examples folder to run this test script. Also make sure you have the ESMFold environment activated!"
  exit 1
fi

# test prediction
python ../scripts/esmfold_inference.py -i inputs/run_test.fa -o outputs --chunk-size 4 --cpu-offload
