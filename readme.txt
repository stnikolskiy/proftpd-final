Container run
docker run -d --net=host stnikolskiy/proftpd-final


Add user
docker exec -it container_id ftpasswd --passwd --file=/etc/proftpd/ftpd.passwd --name=username --uid=1010 --gid=1010 --home=/srv/ftp/ --shell=/bin/false


Remove user
docker exec -it container_id ftpasswd --passwd --file=/etc/proftpd/ftpd.passwd --name=username --delete-user