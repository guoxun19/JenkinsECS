# Version:0.0.1
FROM amazonlinux
MAINTAINER GuoXun
#RUN yum update
#RUN yum install -y nginx
#RUN echo '<head>Hi~ This is new revision of docker image! And it will be in new repository jenkins-test!</head> ' > /usr/share/nginx/html/index.html
#EXPOSE 80
#CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

RUN yum install -y httpd
RUN echo '<body><h1 style="text-align:center"><p style="font-size:50px;">Hi~ I am in your container!'> /var/www/html/index.html
RUN echo $HOSTNAME >> /var/www/html/index.html
RUN echo '</p></h1></body>' >> /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
