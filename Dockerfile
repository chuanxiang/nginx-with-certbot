FROM nginx:1.17.1
LABEL author=chuanxiang

RUN echo "deb http://deb.debian.org/debian stretch-backports main" >> /etc/apt/sources.list
RUN apt-get update && \
    apt-get install -y certbot python-certbot-nginx -t stretch-backports && \
    apt-get clean && apt-get autoclean && apt-get autoremove

CMD ["nginx", "-g", "daemon off;"]
