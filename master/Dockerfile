FROM ubuntu

RUN apt-get update && apt-get install -y puppetmaster

RUN mkdir -p /etc/puppet/code/environments/production/manifests

COPY site.pp /etc/puppet/code/environments/production/manifests/site.pp

ENTRYPOINT puppet master --no-daemonize
