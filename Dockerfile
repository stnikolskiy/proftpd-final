FROM ubuntu
EXPOSE 20 21 40900-40999
RUN apt-get update && apt-get install proftpd ssh -y
CMD rm /etc/proftpd/proftpd.conf -y
CMD rm /etc/proftpd/ftpd.passwd -y
CMD rm /etc/proftpd/virtuals.conf -y
COPY ftpd.passwd /etc/proftpd/
COPY virtuals.conf /etc/proftpd/
COPY proftpd.conf /etc/proftpd/
CMD groupadd ftp_users -g 1010 
CMD useradd ftp_user -u 1010 -g 1010
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD proftpd -n