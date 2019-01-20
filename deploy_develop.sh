#!/bin/bash
# Deploy to develop
echo "Hello World!"
$(aws ecr get-login --no-include-email --region us-east-1)
docker build -t develop-my-api .
docker tag develop-my-api:latest 989002346127.dkr.ecr.us-east-1.amazonaws.com/develop-my-api:latest
docker push 989002346127.dkr.ecr.us-east-1.amazonaws.com/develop-my-api:latest