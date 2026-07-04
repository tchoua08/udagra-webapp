#!/bin/bash
set -e

aws cloudformation update-stack \
  --stack-name udagram-network \
  --template-body file://network.yml \
  --parameters file://network-parameters.json

aws cloudformation wait stack-update-complete \
  --stack-name udagram-network || true

aws cloudformation update-stack \
  --stack-name udagram-app \
  --template-body file://udagram.yml \
  --parameters file://udagram-parameters.json \
  --capabilities CAPABILITY_NAMED_IAM

aws cloudformation wait stack-update-complete \
  --stack-name udagram-app || true
