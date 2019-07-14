#!/bin/bash

ver="0.1"

tag="chuanxiang/nginx-with-certbot:$ver"

echo "build: $tag" && docker build -t $tag . && docker push $tag
