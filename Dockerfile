FROM alpine

RUN apk update
RUN apk add samba

VOLUME /etc/samba
VOLUME /var/lib/samba

EXPOSE 139 445

CMD ["smbd", "-SF"]
