<!--
#                                 __                 __
#    __  ______  ____ ___  ____ _/ /____  ____  ____/ /
#   / / / / __ \/ __ `__ \/ __ `/ __/ _ \/ __ \/ __  /
#  / /_/ / /_/ / / / / / / /_/ / /_/  __/ /_/ / /_/ /
#  \__, /\____/_/ /_/ /_/\__,_/\__/\___/\____/\__,_/
# /____                     matthewdavis.io, holla!
#
#-->

[![Clickity click](https://img.shields.io/badge/k8s%20by%20example%20yo-limit%20time-ff69b4.svg?style=flat-square)](https://k8.matthewdavis.io)
[![Twitter Follow](https://img.shields.io/twitter/follow/yomateod.svg?label=Follow&style=flat-square)](https://twitter.com/yomateod) [![Skype Contact](https://img.shields.io/badge/skype%20id-appsoa-blue.svg?style=flat-square)](skype:appsoa?chat)

# nmap container for kubernetes & such

> k8 by example -- straight to the point, simple execution.

## kubernetes port scannin'

```
$ kubectl run --image=appsoa/docker-alpine-nmap --rm -i -t nm -- -Pn -p9200,9300 elasticsearch.es elasticsearch-discovery.es

Starting Nmap 7.40 ( https://nmap.org ) at 2018-02-03 16:54 UTC

Nmap scan report for elasticsearch.es (10.15.248.94)
Host is up (0.0013s latency).

rDNS record for 10.15.248.94: elasticsearch.es.svc.cluster.local

PORT     STATE    SERVICE
9200/tcp open     wap-wsp
9300/tcp filtered vrace

Nmap scan report for elasticsearch-discovery.es (10.15.252.251)
Host is up (0.00018s latency).

rDNS record for 10.15.252.251: elasticsearch-discovery.es.svc.cluster.local

PORT     STATE    SERVICE
9200/tcp filtered wap-wsp
9300/tcp open     vrace

Nmap done: 2 IP addresses (2 hosts up) scanned in 1.41 seconds
```

## docker `run'in`

```sh
[matthew@centos-1 ~]$ docker run --rm -it appsoa/docker-alpine-nmap -Pn -p80,443 google.com

Starting Nmap 7.40 ( https://nmap.org ) at 2018-02-03 16:47 UTC
Nmap scan report for google.com (209.85.147.139)
Host is up (0.0015s latency).
rDNS record for 209.85.147.139: jg-in-f139.1e100.net
PORT    STATE SERVICE
80/tcp  open  http
443/tcp open  https

Nmap done: 1 IP address (1 host up) scanned in 0.28 seconds
```
