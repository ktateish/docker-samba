FROM alpine

RUN apk add --no-cache samba

VOLUME /var/lib/samba

EXPOSE 139 445

ADD docker-entrypoint.sh /
ENTRYPOINT /docker-entrypoint.sh
