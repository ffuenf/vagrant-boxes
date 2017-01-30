#!/bin/bash -eux

packer_version=0.12.2
wget -q "https://releases.hashicorp.com/packer/${packer_version}/packer_${packer_version}_linux_amd64.zip" \
     -O /tmp/packer-${packer_version}.zip
(cd /tmp && unzip -o -qq packer-$packer_version.zip -d /usr/local/bin/)
rm -rf /tmp/packer-${packer_version}.zip