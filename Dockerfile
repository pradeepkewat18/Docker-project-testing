FROM centos:latest
RUN  yum install apache2 zip unzip -y
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page283/milina.zip /var/www/html
WORKDIR  /var/www/html/
RUN unzip milina.zip
RUN rm -rf milina.zip &&\
    cp -rf milina/* . &&\
    rm -rf milina
EXPOSE 80
CMD ["/etc/sbin/httpd" , "-D" ,"FOREGROUND"]
