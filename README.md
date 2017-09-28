<a href="http://www.ffuenf.de" title="ffuenf - code • design • e-commerce"><img src="https://github.com/ffuenf/Ffuenf_Common/blob/master/skin/adminhtml/default/default/ffuenf/ffuenf.png" alt="ffuenf - code • design • e-commerce" /></a>

vagrant-boxes
=============
[![GitHub tag](http://img.shields.io/github/tag/ffuenf/vagrant-boxes.svg)](https://github.com/ffuenf/vagrant-boxes/tags)
[![Build Status](http://img.shields.io/travis/ffuenf/vagrant-boxes.svg)](https://travis-ci.org/ffuenf/vagrant-boxes)
[![PayPal Donate](https://img.shields.io/badge/paypal-donate-blue.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=J2PQS2WLT2Y8W&item_name=dop%3a%20vagrant-boxes&item_number=vagrant-boxes&currency_code=EUR)

baseboxes build with packer for use with vagrant.
This repository includes the packer templates to build the baseboxes.
The build boxes are available through 

* [Atlas](https://atlas.hashicorp.com/ffuenf)
* Amazon S3 (eu-central-1)

Tools
=====

* [vagrant](http://vagrantup.com)
* [packer](http://packer.io)
* [virtualbox](https://www.virtualbox.org/)
* [VMware Fusion](http://www.vmware.com/de/products/fusion/)
* [AWS Command Line Interface](http://aws.amazon.com/cli/)
* [Thor](http://whatisthor.com/)

Usage
=====

Make sure you have the above tools installed.

The following env vars must be present:
* `PACKER_ATLAS_TOKEN` Atlas API Token
* `AWS_ACCESS_KEY_ID` Amazon Webservices KEY-ID
* `AWS_SECRET_ACCESS_KEY` Amazon Webservices ACCESS-KEY

You have to adjust the Thorfile line 50 to match your own S3 bucket.

run the following command to build/upload individual boxes:
```
$ bundle exec thor packer:build \
  --atlas_version=1.0.0 \                         # version tag
  --os=debian \                                   # os distribution (debian/ubuntu)
  --os_version=8.9.0 \                            # os version
  --providers=virtualbox,vmware_desktop,parallels # providers to build
```

run the following command to build/upload ALL boxes synchronously:
```
$ ./build_boxes.sh
```

run the following command to delete temporary artifacts
```
$ bundle exec thor packer:clean cache
```

run the following command to delete all local box files
```
$ bundle exec thor packer:clean boxes
```

Boxes
=====

### Ubuntu
#### Ubuntu Zesty Zapus 17.04 Server x86_64 / [CHECKSUMS](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/CHECKSUMS) / [manifest](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu-17.04-server-amd64.manifest.json)

* VMware Tools 10.1.6
* VirtualBox Guest Additions 5.1.28
* Chef 13.4.24-1
* Ruby 2.3.0-5ubuntu1
* Rubygems 2.6.13

| Provider          | URL                                                                                                                                                   |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/ubuntu-17.04-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-17.04-server-amd64)                                                      |
| Virtualbox        | [ubuntu-17.04-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-17.04-server-amd64_virtualbox.box) |
| VMWare Fusion     | [ubuntu-17.04-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-17.04-server-amd64_vmware.box)         |

---

#### Ubuntu Yakkety Yak 16.10 Server x86_64 / [CHECKSUMS](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/CHECKSUMS) / [manifest](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu-16.10-server-amd64.manifest.json)

* VMware Tools 10.1.6
* VirtualBox Guest Additions 5.1.28
* Chef 13.4.24-1
* Ruby 2.1.5-4ubuntu1
* Rubygems 2.6.13

| Provider          | URL                                                                                                                                                   |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/ubuntu-16.10-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-16.10-server-amd64)                                                      |
| Virtualbox        | [ubuntu-16.10-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.10-server-amd64_virtualbox.box) |
| VMWare Fusion     | [ubuntu-16.10-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.10-server-amd64_vmware.box)         |

---

#### Ubuntu Xenial Xerus 16.04.3 Server x86_64 / [CHECKSUMS](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/CHECKSUMS) / [manifest](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu-16.04.3-server-amd64.manifest.json)

* VMware Tools 10.1.6
* VirtualBox Guest Additions 5.1.28
* Chef 13.4.24-1
* Ruby 2.3.0-5ubuntu1
* Rubygems 2.6.13

| Provider          | URL                                                                                                                                                       |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/ubuntu-16.04.3-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-16.04.3-server-amd64)                                                      |
| Virtualbox        | [ubuntu-16.04.3-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04.3-server-amd64_virtualbox.box) |
| VMWare Fusion     | [ubuntu-16.04.3-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04.3-server-amd64_vmware.box)         |

---

#### Ubuntu Trusty Tahr 14.04.4 Server x86_64 / [CHECKSUMS](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/CHECKSUMS) / [manifest](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu-14.04.4-server-amd64.manifest.json)

* VMware Tools 10.1.6
* VirtualBox Guest Additions 5.1.28
* Chef 13.4.24-1
* Ruby 1.9.3.484-2ubuntu1.2
* Rubygems 2.6.13

| Provider          | URL                                                                                                                                                       |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/ubuntu-14.04.4-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-14.04.4-server-amd64)                                                      |
| Virtualbox        | [ubuntu-14.04.4-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_virtualbox.box) |
| VMWare Fusion     | [ubuntu-14.04.4-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_vmware.box)         |

---

### Debian
#### Debian Stretch 9.1.0 x86_64 / [CHECKSUMS](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/CHECKSUMS) / [manifest](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian-9.1.0-amd64.manifest.json)

* VMware Tools 10.1.6
* VirtualBox Guest Additions 5.1.28
* Chef 13.4.24-1
* Ruby 2.3.3-1+deb9u1
* Rubygems 2.6.13

| Provider          | URL                                                                                                                                     |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/debian-9.1.0-amd64](https://atlas.hashicorp.com/ffuenf/debian-9.1.0-amd64)                                                      |
| Virtualbox        | [debian-9.1.0-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-9.1.0-amd64_virtualbox.box) |
| VMWare Fusion     | [debian-9.1.0-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-9.1.0-amd64_vmware.box)         |

---

#### Debian Jessie 8.9.0 x86_64 / [CHECKSUMS](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/CHECKSUMS) / [manifest](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian-8.9.0-amd64.manifest.json)

* VMware Tools 10.1.6
* VirtualBox Guest Additions 5.1.28
* Chef 13.4.24-1
* Ruby 2.1.5-2+deb8u3
* Rubygems 2.6.13

| Provider          | URL                                                                                                                                     |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/debian-8.9.0-amd64](https://atlas.hashicorp.com/ffuenf/debian-8.9.0-amd64)                                                      |
| Virtualbox        | [debian-8.9.0-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.9.0-amd64_virtualbox.box) |
| VMWare Fusion     | [debian-8.9.0-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.9.0-amd64_vmware.box)         |

---

Testing
=======

The following Thor tasks are provided for automated testing of the cookbook:

```
$ bundle exec thor list
thor packer:build     # Execute the packer builder
thor packer:clean     # Remove temporary artifacts
thor packer:validate  # Validate all the packer templates
```

License and Author
------------------

- Author:: Achim Rosenhagen (<a.rosenhagen@ffuenf.de>)
- Copyright:: 2017, ffuenf

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
