#!/bin/bash

set -x

apt-get update
apt-get dist-upgrade -y
apt-get install -y curl wget rsync vim man sudo avahi-autoipd
apt-get install -y tzdata
apt-get install -y ntp
apt-get install -y ntpdate
wget -O /tmp/graylog.deb https://packages.graylog2.org/releases/graylog-omnibus/ubuntu/graylog_latest.deb
dpkg -i /tmp/graylog.deb
rm /tmp/graylog.deb
echo 'GRAYLOG_INSTALLATION_SOURCE="qcow"' > /opt/graylog/embedded/share/graylog/installation-source.sh
