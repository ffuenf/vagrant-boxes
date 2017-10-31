#!/bin/bash -eux

# Disable release-upgrades
export DEBIAN_FRONTEND=noninteractive
dist=`grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`

if [ "$dist" == "Ubuntu" ]; then
    ubuntu_version="`lsb_release -r | awk '{print $2}'`";
    ubuntu_major_version="`echo $ubuntu_version | awk -F. '{print $1}'`";
    # Disable release-upgrades
    sed -i.bak 's/^Prompt=.*$/Prompt=never/' /etc/update-manager/release-upgrades;
    # Update the package list
    apt-get -y update;
    # Disable periodic activities of apt
    cat <<EOF >/etc/apt/apt.conf.d/10disable-periodic;
    APT::Periodic::Enable "0";
EOF
    # Upgrade all installed packages incl. kernel and kernel headers
    apt-get -y dist-upgrade -o Dpkg::Options::="--force-confnew";
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
