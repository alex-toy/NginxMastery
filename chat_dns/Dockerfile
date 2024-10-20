FROM sameersbn/bind:latest

COPY named.conf /etc/bind/named.conf
COPY db.alexeisite.com /etc/bind/db.alexeisite.com

EXPOSE 53/tcp 53/udp

CMD ["/usr/sbin/named", "-g"]
