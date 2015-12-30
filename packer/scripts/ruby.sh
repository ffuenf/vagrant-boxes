#!/bin/bash -eux

# Install Ruby from packages
apt-get -y install unzip ruby1.9.1 ruby1.9.1-dev libruby1.9.1

# Install Rubygems from source
rg_ver=2.5.1
curl -o /tmp/rubygems-${rg_ver}.zip \
  "http://production.cf.rubygems.org/rubygems/rubygems-${rg_ver}.zip"
(cd /tmp && unzip rubygems-${rg_ver}.zip && \
  cd rubygems-${rg_ver} && ruby setup.rb --no-format-executable)
rm -rf /tmp/rubygems-${rg_ver} /tmp/rubygems-${rg_ver}.zip