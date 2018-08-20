#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.62 \
  --os=ubuntu \
  --os_version=16.04.4-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.62 \
  --os=ubuntu \
  --os_version=18.04.1-live-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.62 \
  --os=debian \
  --os_version=9.5.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.62 \
  --os=debian \
  --os_version=8.11.0 \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.62 \
  --os=ubuntu \
  --os_version=14.04.5-server \
  --providers=virtualbox,vmware

bundle exec thor packer:build \
  --atlas_version=1.0.62 \
  --os=ubuntu \
  --os_version=17.10.1-server \
  --providers=virtualbox,vmware