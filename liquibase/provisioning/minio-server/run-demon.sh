#!/bin/bash

docker run -d -it -p 9000:9000 -p 9001:9001 --name minio-server \
  -e "MINIO_ROOT_USER=minioadmin" \
  -e "MINIO_ROOT_PASSWORD=minioadmin" \
  -v /home/minio/data:/data \
  minio/minio server /data \
    --console-address :9001