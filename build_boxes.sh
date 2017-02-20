#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.45 \
  --os=debian \
  --os_version=8.7.1 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.45 \
  --os=ubuntu \
  --os_version=14.04.4-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.45 \
  --os=ubuntu \
  --os_version=16.04.2-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.45 \
  --os=ubuntu \
  --os_version=16.10-server \
  --providers=virtualbox,vmware