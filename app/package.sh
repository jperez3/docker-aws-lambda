#!/bin/bash

cd /app
rm -f /app/lambda/lambda.zip

mkdir /app/tmp
python3 -m pip install -r /app/lambda/requirements.txt -t /app/tmp --upgrade
cp -r /app/lambda/* /app/tmp
zip -r9 /app/lambda/lambda.zip /app/tmp/*
rm -rf /app/tmp
