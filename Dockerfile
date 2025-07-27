FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN yum install -y wget unzip pip
WORKDIR /opt
RUN wget https://teamchubucket.s3.us-east-1.amazonaws.com/Project.zip
RUN unzip Project.zip
WORKDIR /opt/Project
RUN pip install flask pymemcache mysql-connector-python
COPY config.py ./
EXPOSE 8001
ENTRYPOINT python3 app.py >> logs 2>&1
