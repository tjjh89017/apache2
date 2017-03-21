FROM aarch64/ubuntu
MAINTAINER tjjh89017@hotmail.com

RUN sed -i 's/ports.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get install apache2 -y

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

