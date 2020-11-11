#!/bin/bash
#install rsync
set -e
if [ -z "`dpkg -l |grep rsync`" ];then
	sudo apt install rsync
fi
echo "install rsync over"
mkdir /etc/rsyncd
sudo wget -P /etc/rsyncd "https://github.com/frogchou/data_syn/tree/master/rsyncd/rsyncd.conf"
sudo wget -P /etc/rsyncd "https://github.com/frogchou/data_syn/tree/master/rsyncd/rsyncd.motd"
sudo wget -P /etc/rsyncd "https://github.com/frogchou/data_syn/tree/master/rsyncd/rsyncd.secrets"
chmod 600 /etc/rsyncd.passwd
echo "install over"
echo "change /etc/rsyncd/rsyncd.conf to your self"
echo "run commad 'rsync -daemon --config=/etc/rsyncd.conf' to start service"
