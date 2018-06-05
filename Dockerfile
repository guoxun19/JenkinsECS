# Version:0.0.1
FROM amazonlinux
MAINTAINER GuoXun
#RUN yum update
RUN yum install -y nginx
RUN echo '<head>Hi~ This is new revision of docker image! And it will be in new repository jenkins-test!</head> ' > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
