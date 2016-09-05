#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.34 \
  --os=debian \
  --os_version=7.11.0 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.34 \
  --os=debian \
  --os_version=8.5.0 \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.34 \
  --os=ubuntu \
  --os_version=14.04.4-server \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.34 \
  --os=ubuntu \
  --os_version=15.10-server \
  --providers=virtualbox,vmware,parallels

bundle exec thor packer:build \
  --atlas_version=1.0.34 \
  --os=ubuntu \
  --os_version=16.04-server \
  --providers=virtualbox,vmware,parallels