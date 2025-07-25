FROM public.ecr.aws/amazonlinux/amazonlinux:latest
RUN yum update -y && yum install -y unzip python3 wget
WORKDIR /opt
RUN wget https://teamchubucket.s3.us-east-1.amazonaws.com/Project.zip
RUN unzip Project.zip
WORKDIR /opt/Project
RUN touch logs
EXPOSE 5000
CMD python3 app.py >> logs 2>&1
