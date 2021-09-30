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
    --region=us-west-2
    ;;

  update)
    aws cloudformation update-stack \
    --stack-name $STACK_NAME \
    --template-body file://servers.yml \
    --parameters file://servers-parameters.json \
    --region=us-west-2
    ;;

  delete)
    aws cloudformation delete-stack \
    --stack-name $STACK_NAME \
    --region=us-west-2
    ;;

  *)
    echo -n "unknown argument, expecting (create | update | delete)"
    ;;
esac