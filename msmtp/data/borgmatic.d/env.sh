#!/bin/sh

cat >/etc/mailenv << EOF
# THIS FILE GETS RECREATED AUTOMATICALLY ON CONTAINER STARTUP
BACKUP_COMMAND="/usr/bin/borgmatic --stats -v 0"
MAILTO="${MAIL_TO}"
MAILSUBJECT="${MAIL_SUBJECT}"

EOF