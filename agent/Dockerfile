FROM ubuntu

RUN apt-get update && apt-get install -y puppet

COPY puppet.conf /etc/puppet/puppet.conf

ENTRYPOINT puppet agent --no-daemonize --verbose
