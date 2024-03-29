FROM debian:buster

RUN apt-get -y update && apt-get -y install mariadb-server \
			wget \
			php \
			php-cli \
	 		php-cgi \
			php-mbstring \
			php-fpm \
			php-mysql \
			nginx \
			openssl \
			vim \
			libnss3-tools

COPY srcs .

WORKDIR .

CMD ["bash", "start.sh"]
