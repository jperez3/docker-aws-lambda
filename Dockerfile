FROM amazonlinux:latest

RUN mkdir /app
ADD ./app /app  
RUN yum -y install git \
    python3 python3-pip zip \
    && yum clean all \
    && rm -rf /var/cache/yum \
    && chmod +x /app/package.sh
  

RUN python3 -m pip install --upgrade pip \
   && python3 -m pip install boto3

CMD [ "/app/package.sh" ]   