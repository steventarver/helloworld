#!/bin/sh
while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; sh bash-web-worker.sh; } | nc -l -p 8080; done

