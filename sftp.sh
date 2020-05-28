#!/bin/bash
export SSHPASS=redhat
USER=vagrant
FILES=files/*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  du -h $f
  time sshpass -e sftp -oBatchMode=no -b - $USER@192.168.33.11 << !
cd /tmp
put $f
bye
!
done
