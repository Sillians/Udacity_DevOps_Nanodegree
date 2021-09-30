#!/bin/bash
#date 2021-09-25
#author Basil Ihuoma
#purpose cloudformation bash script

STACK_NAME="sillians-highly-available-website-infra-networks"
ACTION=$1

# CASE STATEMENT
case $ACTION in

  create)
    aws cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://networkinfra.yml \
    --parameters file://networkinfra-parameters.json \
    --region=us-west-2
    ;;

  update)
    aws cloudformation update-stack \
    --stack-name $STACK_NAME \
    --template-body file://networkinfra.yml \
    --parameters file://networkinfra-parameters.json \
    --region=us-west-2
    ;;

  delete)
    aws cloudformation delete-stack \
    --stack-name $STACK_NAME \
    --region=us-west-2
    ;;

  *)
    echo -n "unknown argument, expecting (create | update | delete) :)"
    ;;
# close the case
esac 