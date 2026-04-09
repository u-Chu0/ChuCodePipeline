FROM swr.cn-north-4.myhuaweicloud.com/ddn-k8s/registry.k8s.io/nginx-slim

# 复制本地网页文件到容器内
COPY ./html /usr/share/nginx/html

# 暴露 80 端口
EXPOSE 80

# 前台运行 nginx
CMD ["nginx", "-g", "daemon off;"]
