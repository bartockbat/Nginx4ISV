FROM registry-rhconnect.rhcloud.com/rhel71_updates

#Maintainer
MAINTAINER Glen Millard "gmillard@redhat.com" 

#
#Install the necessities
#

ADD nginx-org.repo /etc/yum.repos.d/Nginx.repo
RUN yum clean all -y
RUN yum -y update
RUN yum -y install wget

#Add the nginx application
RUN yum -y install nginx

#Move the default config file out of the way
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.gln

#Add a custom config file
ADD nginx.conf /etc/nginx/nginx.conf

VOLUME ["/var/cache/nginx"]

#The required ports - http and https
EXPOSE 80 443

#Run the nginx application on launch of the container
CMD ["nginx", "-g", "daemon off;"]

#Atomic labels
LABEL RUN /usr/bin/docker run -d IMAGE

