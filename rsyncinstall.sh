#!/bin/bash
#install rsync
set -e
current_path=$(cd "$(dirname $0)";pwd)
if [ -z "`dpkg -l |grep rsync`" ];then
	sudo apt install rsync
fi
echo "install rsync over"
mkdir /etc/rsyncd
#sudo wget -P /etc/rsyncd "https://raw.githubusercontent.com/frogchou/data_syn/master/rsyncd/rsyncd.conf"
#sudo wget -P /etc/rsyncd "https://raw.githubusercontent.com/frogchou/data_syn/master/rsyncd/rsyncd.motd"
#sudo wget -P /etc/rsyncd "https://raw.githubusercontent.com/frogchou/data_syn/master/rsyncd/rsyncd.secrets"

cp ${current_path}/rsyncd/* /etc/rsyncd/

chmod 600 /etc/rsyncd/rsyncd.secrets
echo "install over"
echo "change /etc/rsyncd/rsyncd.conf to your self"
echo "run commad 'rsync -daemon --config=/etc/rsyncd/rsyncd.conf' to start service"
