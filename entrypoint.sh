#!/bin/bash
chown 1010:1010 /srv/ftp &&
chmod 775 /srv/ftp &&
chmod 400 /etc/proftpd/ftpd.passwd &&
exec "$@"