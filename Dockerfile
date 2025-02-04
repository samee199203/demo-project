FROM centos:latest
MAINTAINER samee.shaikhsamee50@gmail.com
RUN yum install -y httpd \
   zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/aj.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip aj.zip
RUN cp -rvf aj/* .
RUN rm -rf aj aj.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

