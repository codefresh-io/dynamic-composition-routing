FROM nginx:latest

WORKDIR /

ADD consul-template-config /consul-template-config
ADD default.conf.tmpl /default.conf.tmpl
ADD start_services.sh /start_services.sh

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}

RUN wget https://releases.hashicorp.com/consul-template/0.18.2/consul-template_0.18.2_linux_amd64.tgz
RUN tar -xvf consul-template_0.18.2_linux_amd64.tgz

CMD ["sh", "/start_services.sh"]
