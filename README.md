# oauth2_proxy
[![CircleCI](https://circleci.com/gh/FactomProject/oauth2_proxy/tree/develop.svg?style=shield)](https://circleci.com/gh/FactomProject/oauth2_proxy/tree/develop)

This is but a dockerized version of [bitly/oauth2_proxy](https://github.com/bitly/oauth2_proxy)

## Prerequisites

You must have at least Docker v17 installed on your system.

Having this repo cloned helps too 😇

## Build
From wherever you have cloned this repo, run

`docker build -t oauth2_proxy .`

## Run
1. Create an oauth2_proxy.conf file somewhere.  Have it point it's TLS cert crt/key to /srv/...
2. Put your TLS cert crt/key somewhere mountable

```
docker run --rm -p 443:443 
			-v <location of oauth2_proxy.conf>:/srv/oauth2_proxy.conf 
			-v <location of cert.crt>:/srv/cert.crt 
			-v <location of cert.key>:/srv/cert.key
			oauth2_proxy
```

#Documentation
Go to [the sunsource](https://github.com/bitly/oauth2_proxy)