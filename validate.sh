#!/bin/bash
ID=`terraform output INSTANCEID`
echo $ID
status=`aws ec2 describe-instances --filters --instance-ids=$ID --region us-east-1 --query Reservations[].Instances[].State.Name --output text`
if [[ status -eq 'running' ]]; then
echo "$ID Server is running"
else
echo "$ID is not running"
fi

mkdir -p /tmp/$ID
cp -R * /tmp/$ID
