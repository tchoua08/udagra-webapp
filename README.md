# udagra-webapp

# CD12352 - Infrastructure as Code Project Solution
# [TCHOUA TCHATOUO Bienvenue]

## Overview
This project deploys a highly available web application infrastructure on AWS using CloudFormation.

## Architecture
The infrastructure includes:
- 1 VPC
- 2 public subnets
- 2 private subnets
- 1 Internet Gateway
- 1 NAT Gateway
- 1 Application Load Balancer
- 1 Auto Scaling Group with 4 EC2 instances
- 1 S3 bucket for static content
- Security Groups and IAM Role

## Files
- `network.yml`: network infrastructure
- `udagram.yml`: application infrastructure
- `network-parameters.json`: parameters for network stack
- `udagram-parameters.json`: parameters for application stack
- `create.sh`: create both stacks
- `update.sh`: update both stacks
- `delete.sh`: delete both stacks

## Prerequisites
- AWS CLI configured
- Valid AMI ID in `udagram-parameters.json`

## Deploy
```bash
chmod +x create.sh update.sh delete.sh
./create.sh
