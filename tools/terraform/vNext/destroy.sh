#!/bin/bash
#
##!/uisr/bin/sh     #  Declares a Bourne shell
##!/usr/bin/bash   #  Declares a Bourne-Again shell
##!/usr/bin/csh    #  Declares a C shell
##!/usr/bin/tsh    #  Declares a T shell
#
#
#####################################################################
if (( "$#" != 3 ))
then
    echo "Necessary to have 2 parameters."
    echo "Param 1:  Environment - Possible Values are"
    echo "Param 2:  Terraform Backend S3 Bucket Name"
    echo "Param 3:  Terraform Backend S3 Bucket Region"
exit 1
fi

ENV=$(echo "$1" | tr '[:upper:]' '[:lower:]')
MODULE_TYPE=vNext
STATE_FILE="$MODULE_TYPE/terraform.tfstate"
BUCKET=$2
REGION=$3

DEPLOY_DIR=$(pwd)

echo `pwd`
cd "$DEPLOY_DIR/resources"
echo `pwd`

#terraform init
terraform init -backend=true \
-backend-config="region=${REGION}" \
-backend-config="bucket=${BUCKET}" \
-backend-config="key=${STATE_FILE}"

terraform workspace new $ENV | terraform workspace select $ENV

echo `pwd`
terraform destroy -var-file="${DEPLOY_DIR}/env/${ENV}/terraform.tfvars"

