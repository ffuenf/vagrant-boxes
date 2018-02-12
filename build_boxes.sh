#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.55 \
  --os=debian \
  --os_version=9.3.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.55 \
  --os=debian \
  --os_version=8.10.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.55 \
  --os=ubuntu \
  --os_version=14.04.4-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.55 \
  --os=ubuntu \
  --os_version=16.04.3-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.55 \
  --os=ubuntu \
  --os_version=17.10.1-server \
  --providers=virtualbox,vmware