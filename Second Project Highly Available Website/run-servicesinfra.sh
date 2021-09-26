#!/bin/bash
#date
#author
#purpose

STACK_NAME="sillians-highly-available-website-infra-services"
ACTION=$1

case $ACTION in

  create)
    aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://servers.yml \
    --parameters file://servers-parameters.json \
    --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
    --region=us-east-1 \
    --profile UdacityLab
    ;;

  update)
    aws cloudformation update-stack \
    --stack-name $STACK_NAME \
    --template-body file://servers.yml \
    --parameters file://servers-parameters.json \
    --region=us-east-1 \
    --profile UdacityLab
    ;;

  delete)
    aws cloudformation delete-stack \
    --stack-name $STACK_NAME \
    --region=us-east-1 \
    --profile UdacityLab
    ;;

  *)
    echo -n "unknown argument, expecting (create | update | delete)"
    ;;
esac