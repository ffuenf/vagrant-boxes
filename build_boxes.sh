#!/bin/bash -eux

bundle exec thor packer:build \
  --atlas_version=1.0.47 \
  --os=debian \
  --os_version=9.1.0 \
  --providers=vmware,virtualbox

bundle exec thor packer:build \
  --atlas_version=1.0.47 \
  --os=debian \
  --os_version=8.9.0 \
  --providers=vmware,virtualbox

bundle exec thor packer:build \
  --atlas_version=1.0.47 \
  --os=ubuntu \
  --os_version=14.04.4-server \
  --providers=vmware,virtualbox

bundle exec thor packer:build \
  --atlas_version=1.0.47 \
  --os=ubuntu \
  --os_version=16.04.3-server \
  --providers=vmware,virtualbox

bundle exec thor packer:build \
  --atlas_version=1.0.47 \
  --os=ubuntu \
  --os_version=17.04-server \
  --providers=vmware,virtualbox

bundle exec thor packer:build \
  --atlas_version=1.0.47 \
  --os=ubuntu \
  --os_version=16.10-server \
  --providers=vmware,virtualbox