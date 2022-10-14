FROM centos:latest
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN  yum install httpd -y
RUN yum install zip -y
RUN yum install unzip -y
ADD https:https://www.free-css.com/assets/files/free-css-templates/download/page284/maker.zip /var/www/html/
WORKDIR /var/ww/html
RUN unzip maker.zip
RUN cp -rvf maker/*
RUN -rf maker maker.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
