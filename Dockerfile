FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y dnsmasq

ADD dnsmasq.conf /dnsmasq-template.conf
ADD start-dnsmasq.sh /usr/bin/
RUN echo "server=208.67.222.222" >> /etc/dnsmasq.conf
RUN echo "server=208.67.220.220" >> /etc/dnsmasq.conf
RUN echo "conf-dir=/etc/dnsmasq.d/,*.conf" >> /etc/dnsmasq.conf
CMD ["start-dnsmasq.sh"]

