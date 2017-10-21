# oauth2_proxy

This is but a dockerized version of [bitly/oauth2_proxy](https://github.com/bitly/oauth2_proxy)

## Prerequisites

You must have at least Docker v17 installed on your system.

Having this repo cloned helps too 😇

## Build
From wherever you have cloned this repo, run

`docker build -t oauth2_proxy .`

## Run
1. Create an oauth2_proxy.conf file somewhere
2. `docker run --rm -p 443:443 -v <location of oauth2_proxy.conf>:/srv/oauth2_proxy.conf oauth2_proxy`

#Documentation
Go to [the sunsource](https://github.com/bitly/oauth2_proxy)