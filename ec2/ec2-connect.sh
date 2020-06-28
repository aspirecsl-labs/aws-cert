#!/bin/bash

if [[ "$1" =~ [0-9]+.[0-9]+.[0-9]+.[0-9]+ ]]; then
  ssh -i ~/.ssh/ec2-access.pem ec2-user@$1
else
  echo ""
  echo "ERROR: requires EC2 IP or hostname"
  echo ""
  exit 1
fi
