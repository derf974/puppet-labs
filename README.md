# Puppet labs

## Build the images
```bash
docker build -t puppet-master master/
docker build -t puppet-agent agent/
```

## Create the network

```bash
docker network create puppetnet
```
## With docker-compose  

```bash
docker-compose up
```

## Without docker-compose

### Start the master
```bash
docker run -d --rm --network puppetnet -h master --name master -ti puppet-master
```
### Start the agent 
```bash
docker run -d --rm --name agent1 --network puppetnet -h agent1 -ti puppet-agent bash
```

### Force sync to master ( in the agent ) 

```bash
docker exec -ti $( docker ps | awk '/puppet-agent/ { print $1 }' ) bash
puppet agent -t
```

### Sign the certificat ( in the master)
```bash
docker exec -ti $( docker ps | awk '/puppet-master/ { print $1 }' ) bash
puppet cert list

puppet cert sign agent1
```

Force again the synchro.
