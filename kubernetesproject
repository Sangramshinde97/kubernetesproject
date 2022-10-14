FROM centos:latest
RUN yum install -y httpd \
zip \
unzip
ADD https:https://www.free-css.com/assets/files/free-css-templates/download/page284/maker.zip /var/www/html/
WORKDIR /var/ww/html
RUN unzip maker.zip
RUN cp -rvf maker/*
RUN -rf maker maker.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
