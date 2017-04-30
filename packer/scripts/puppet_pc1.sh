#!/bin/bash -eux

# codename of distro
LSB_RELEASE=$(lsb_release -sc)

# Prepare puppetlabs repo
wget http://apt.puppetlabs.com/puppetlabs-release-pc1-${LSB_RELEASE}.deb
dpkg -i puppetlabs-release-pc1-${LSB_RELEASE}.deb
apt-get -y update

# Install puppet/facter
apt-get -y install puppet-agent
rm -f puppetlabs-release-pc1-${LSB_RELEASE}.deb

# Add puppet collections to path:
sed -i -e 's/PATH="/PATH="\/opt\/puppetlabs\/bin:/' /etc/environment
ln -s /opt/puppetlabs/bin/puppet /usr/bin/puppet
