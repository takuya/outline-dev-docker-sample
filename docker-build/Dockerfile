

FROM ubuntu:20.04

ADD ./scripts/01.apt.sh /root/
RUN /root/01.apt.sh

ADD ./scripts/02.apt-install.sh /root/
RUN /root/02.apt-install.sh


ADD ./scripts/03.node-src.sh /root/
RUN /root/03.node-src.sh

ADD ./scripts/04.supervisord.sh /root/
RUN /root/04.supervisord.sh

ADD ./scripts/05.redis.sh /root/
RUN /root/05.redis.sh

ADD ./scripts/06.outline.sh /root
RUN /root/06.outline.sh

ADD ./scripts/07.yarn-build.sh /root
RUN /root/07.yarn-build.sh


ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD ./start-outline.sh /root
ADD ./timer-restart.sh /root
ADD ./update-outline.sh /root

RUN mkdir /root/data

WORKDIR /root/outline
CMD ["/usr/bin/supervisord"]


EXPOSE 3000
