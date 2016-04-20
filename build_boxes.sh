#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.26 \
  --os=debian \
  --os_version=7.10.0 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.26 \
  --os=debian \
  --os_version=8.4.0 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.26 \
  --os=ubuntu \
  --os_version=14.04.4-server \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.26 \
  --os=ubuntu \
  --os_version=15.10-server \
  --providers=virtualbox,parallels
