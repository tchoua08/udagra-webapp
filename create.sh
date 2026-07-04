#!/bin/bash
set -e

aws cloudformation create-stack \
  --stack-name udagram-network \
  --template-body file://network.yml \
  --parameters file://network-parameters.json

aws cloudformation wait stack-create-complete \
  --stack-name udagram-network

aws cloudformation create-stack \
  --stack-name udagram-app \
  --template-body file://udagram.yml \
  --parameters file://udagram-parameters.json \
  --capabilities CAPABILITY_NAMED_IAM

aws cloudformation wait stack-create-complete \
  --stack-name udagram-app
