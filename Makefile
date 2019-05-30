default:
	make up

build: 
	docker build . -t jperez3/aws-lambda:latest

run:
	docker run \
	--rm --name lambda \
	-v $$(pwd)/lambda:/app/lambda \
	jperez3/aws-lambda:latest

up:
	make build run

stop:
	docker stop lambda

remove:
	docker rm lambda && docker rmi jperez3/aws-lambda:latest

destroy:
	make stop remove

debug:
	docker exec -it lambda /bin/bash

upload:
	aws lambda --profile something update-function-code --function-name python_test --zip-file fileb://lambda/lambda.zip