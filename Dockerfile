FROM alpine:3.4
EXPOSE 8080
COPY bash-web-server.sh .
COPY test.sh .
ENTRYPOINT ["./bash-web-server.sh"]


