#!/bin/bash
# Deploy to production
$(aws ecr get-login --no-include-email --region us-east-1)
docker build -t production-my-api .
docker tag production-my-api:latest 989002346127.dkr.ecr.us-east-1.amazonaws.com/production-my-api:latest
docker push 989002346127.dkr.ecr.us-east-1.amazonaws.com/production-my-api:latest