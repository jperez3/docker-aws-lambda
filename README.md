
# docker-aws-lambda

Testing lambda building


## General

* Directions:
    - Build container `make build`
    - Create directory called `lambda` in your current directory
    - Create `lambda_function.py` in `lambda` folder
    - Create `requirements.txt` in `lambda` folder (for pip)
    - Run container `make run`
    - Upload lambda `aws lambda --profile aws-profile-name update-function-code --function-name python_test --zip-file fileb://lambda/lambda.zip`


##### Container Usage

* Build Container: `make build`
* Run Container: `make run`
* Build and Run Container: `make up`
* Stop Container: `make stop`
* Remove Container: `make remove`
* Stop and Remove Container: `make destroy`
* Debug Container: `make debug`

#### Testing



#### Resources

* [An Easier way to build AWS Lambda deployment packages](https://blog.quiltdata.com/an-easier-way-to-build-lambda-deployment-packages-with-docker-instead-of-ec2-9050cd486ba8)