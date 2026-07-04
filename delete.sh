#!/bin/bash
set -e

aws cloudformation delete-stack --stack-name udagram-app
aws cloudformation wait stack-delete-complete --stack-name udagram-app

aws cloudformation delete-stack --stack-name udagram-network
aws cloudformation wait stack-delete-complete --stack-name udagram-network
