#!/bin/bash

helpFunction()
{
   echo "Lint a cfn script and then upload it to an s3 bucket"
   echo "Usage: $0 {file} bucket"
   exit 1 # Exit script after printing help
}

if [ -z "$2" ]
then 
  echo "You must provide a file and a bucket"
  exit 1
fi

fail=`cfn-lint $1`
if [ "$fail" == "" ];
then 
  echo "lint passed"
  fail=`cfn_nag $1`
  if [[ "$fail" =~ "Failures count: 0" ]]; 
  then
    if [[ ! "$fail" =~ "Warnings count: 0" ]];
    then 
      echo "$fail"
    fi
    echo "nag passed"
    aws s3 cp $1 $2
  else 
    echo "$fail"
    exit 1
  fi
else
  echo "$fail"
  exit 1
fi
