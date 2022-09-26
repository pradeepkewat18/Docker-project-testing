FROM quay.io/rhn_support_bsingh/centos:centos7
RUN  yum install httpd -y
RUN cp ./index.html /var/www/html/index.html
CMD  ["/usr/sbin/httpd","-D","FOREGROUND"]
