#!/bin/bash -eux

# Disable release-upgrades
dist=`grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`
if [ "$dist" == "Ubuntu" ]; then
  sed -i.bak 's/^Prompt=.*$/Prompt=never/' /etc/update-manager/release-upgrades;
  # Update the package list
  apt-get -qy update;
  # Upgrade all installed packages incl. kernel and kernel headers
  apt-get -qy dist-upgrade --force-yes;
  reboot;
  sleep 60;
fi
if [ "$dist" == "Debian" ]; then
  arch="`uname -r | sed 's/^.*[0-9]\{1,\}\.[0-9]\{1,\}\.[0-9]\{1,\}\(-[0-9]\{1,2\}\)-//'`"
  apt-get update;
  apt-get -y upgrade linux-image-$arch;
  apt-get -y install linux-headers-`uname -r`;
fi

# update package index on boot
cat <<EOF >/etc/init/refresh-apt.conf;
description "update package index"
start on networking
task
exec /usr/bin/apt-get update
EOF
