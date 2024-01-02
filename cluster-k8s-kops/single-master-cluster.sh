#!/bin/bash

kops create cluster --name= cloudev7.online \
--state=s3://state-file07 --zones=us-east-1a,us-east-1b,us-east-1c \
--node-count=3 --control-plane-count=1 --node-size=t3.medium --control-plane-size=t3.medium \
--control-plane-zones=us-east-1a --control-plane-volume-size 10 --node-volume-size 10 \
--ssh-public-key ~/.ssh/id_rsa.pub \
--dns-zone=cloudev7.online  --yes    #--dry-run --output yaml