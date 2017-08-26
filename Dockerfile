FROM debian:jessie



ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update \
	&& apt-get install -y supervisor \
	&& echo "install necessary packages here"
	&& apt-get clean

# ADD services/service.conf /etc/supervisor/conf.d/service.conf

CMD /usr/bin/supervisord -n
