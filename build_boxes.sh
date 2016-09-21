#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.38 \
  --os=debian \
  --os_version=8.6.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.38 \
  --os=ubuntu \
  --os_version=14.04.4-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.38 \
  --os=ubuntu \
  --os_version=15.10-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.38 \
  --os=ubuntu \
  --os_version=16.04.1-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.38 \
  --os=ubuntu \
  --os_version=16.10-server \
  --providers=virtualbox,vmware