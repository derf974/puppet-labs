FROM ubuntu

RUN apt-get update && apt-get install -y puppetmaster

#Dude is just for the lab don't worrie :)
RUN echo "autosign = true" >> /etc/puppet/puppet.conf 

RUN mkdir -p /etc/puppet/code/environments/production/manifests

ADD infra /etc/puppet/code/environments/production/manifests/

ENTRYPOINT puppet master --no-daemonize
