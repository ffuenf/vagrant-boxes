#!/bin/bash -eux

apt-get update
apt-get -y upgrade

# ensure the correct kernel headers are installed
apt-get -y install linux-headers-$(uname -r)

# update package index on boot
cat <<EOF > /etc/init/refresh-apt.conf
description "update package index"
start on networking
task
exec /usr/bin/apt-get update
EOF

# install https transport for apt
apt-get -y install apt-transport-https

# install curl to fix broken wget while retrieving content from secured sites
apt-get -y install curl

# install rsync
apt-get -y install rsync
