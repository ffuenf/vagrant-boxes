#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.49 \
  --os=debian \
  --os_version=9.2.1 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.49 \
  --os=debian \
  --os_version=8.9.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.49 \
  --os=ubuntu \
  --os_version=14.04.4-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.49 \
  --os=ubuntu \
  --os_version=16.04.3-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.49 \
  --os=ubuntu \
  --os_version=17.04-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.49 \
  --os=ubuntu \
  --os_version=17.10-server \
  --providers=virtualbox,vmware