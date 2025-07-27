FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN yum install -y wget unzip pip
WORKDIR /opt
RUN wget https://teamchubucket.s3.us-east-1.amazonaws.com/Project2.zip
RUN unzip Project2.zip
WORKDIR /opt/Project2
RUN pip install flask pymemcache mysql-connector-python psutil
COPY config.py ./
EXPOSE 8001
ENTRYPOINT python3 app.py >> logs 2>&1
