FROM dockerfile/nginx

MAINTAINER Jerome Baum "jerome@jeromebaum.com"

RUN apt-get install -y apache2-utils

ADD proxy-site /etc/nginx/sites-enabled/proxy-site
ADD add-user /add-user
ADD run-proxy /run-proxy
RUN chmod +x /add-user /run-proxy
ADD htpasswd /htpasswd

CMD "/run-proxy"
