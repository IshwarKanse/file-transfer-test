#!/bin/bash
PASSWORD=redhat
USER=vagrant
FILES=files/*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  time sshpass -p $PASSWORD scp $f $USER@192.168.33.11:/tmp
done
