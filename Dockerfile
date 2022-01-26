FROM centos:latest
MAINTAINER samee.shaikhsamee50@gmail.com
RUN yum install -y httpd \
   zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/corso.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip corso.zip
RUN cp -rvf web/* .
RUN rm -rf web corso.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

