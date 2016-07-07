#!/bin/bash -eux

# Install Ruby from packages
apt-get -qy install ruby ruby-dev libruby

# Install Rubygems from source
rg_ver=2.6.6
wget -q "https://rubygems.org/rubygems/rubygems-${rg_ver}.zip" \
     -O /tmp/rubygems-${rg_ver}.zip
(cd /tmp && unzip -o -qq rubygems-${rg_ver}.zip -d /tmp && \
  cd rubygems-${rg_ver} && ruby setup.rb --no-format-executable)
rm -rf /tmp/rubygems-${rg_ver} /tmp/rubygems-${rg_ver}.zip