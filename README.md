<a href="http://www.ffuenf.de" title="ffuenf - code • design • e-commerce"><img src="https://github.com/ffuenf/Ffuenf_Common/blob/master/skin/adminhtml/default/default/ffuenf/ffuenf.png" alt="ffuenf - code • design • e-commerce" /></a>

vagrant-boxes
=============
[![GitHub tag](http://img.shields.io/github/tag/ffuenf/vagrant-boxes.svg)][tag]
[![Build Status](http://img.shields.io/travis/ffuenf/vagrant-boxes.svg)][travis]
[![PayPal Donate](https://img.shields.io/badge/paypal-donate-blue.svg)][paypal_donate]
[tag]: https://github.com/ffuenf/vagrant-boxes/tags
[travis]: https://travis-ci.org/ffuenf/vagrant-boxes
[paypal_donate]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=J2PQS2WLT2Y8W&item_name=dop%3a%20vagrant-boxes&item_number=vagrant-boxes&currency_code=EUR

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
* [Parallels Desktop](https://www.parallels.com/de/products/desktop/)
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
  --os_version=8.4.0 \                            # os version
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
#### Ubuntu Xenial Xerus 16.04 Server x86_64

* VMware Tools 10.0.6 build-3595377
* VirtualBox Guest Additions 5.0.22
* Parallels Desktop 11.2.0-32581
* Chef 12.11.18-1
* Ruby 2.3.0-5ubuntu1
* Rubygems 2.6.4

| Provider          | URL                                                                                                                                                                                                                                                                                                                                                                                                             |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/ubuntu-16.04-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-16.04-server-amd64)                                                                                                                                                                                                                                                                                                                |
| Virtualbox        | [ubuntu-16.04-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion     | [ubuntu-16.04-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_vmware_SHA512SUM)                 |
| Parallels Desktop | [ubuntu-16.04-server-amd64_parallels.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_parallels.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_parallels_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-16.04-server-amd64_parallels_SHA512SUM)     |

---

#### Ubuntu Wily Werewolf 15.10 Server x86_64

* VMware Tools 10.0.6 build-3595377
* VirtualBox Guest Additions 5.0.22
* Parallels Desktop 11.2.0-32581
* Chef 12.11.18-1
* Ruby 2.1.5-4ubuntu1
* Rubygems 2.6.4

| Provider          | URL                                                                                                                                                                                                                                                                                                                                                                                                             |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/ubuntu-15.10-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-15.10-server-amd64)                                                                                                                                                                                                                                                                                                                |
| Virtualbox        | [ubuntu-15.10-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion     | [ubuntu-15.10-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_vmware_SHA512SUM)                 |
| Parallels Desktop | [ubuntu-15.10-server-amd64_parallels.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_parallels.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_parallels_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-15.10-server-amd64_parallels_SHA512SUM)     |

---

#### Ubuntu Trusty Tahr 14.04.4 Server x86_64

* VMware Tools 10.0.6 build-3595377
* VirtualBox Guest Additions 5.0.22
* Parallels Desktop 11.2.0-32581
* Chef 12.11.18-1
* Ruby 1.9.3.484-2ubuntu1.2
* Rubygems 2.6.4

| Provider          | URL                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/ubuntu-14.04.4-server-amd64](https://atlas.hashicorp.com/ffuenf/ubuntu-14.04.4-server-amd64)                                                                                                                                                                                                                                                                                                                    |
| Virtualbox        | [ubuntu-14.04.4-server-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion     | [ubuntu-14.04.4-server-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_vmware_SHA512SUM)                 |
| Parallels Desktop | [ubuntu-14.04.4-server-amd64_parallels.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_parallels.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_parallels_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/ubuntu/ubuntu-14.04.4-server-amd64_parallels_SHA512SUM)     |

---

### Debian
#### Debian Jessie 8.x

##### Debian Jessie 8.5.0 x86_64

* VMware Tools 10.0.6 build-3595377
* VirtualBox Guest Additions 5.0.22
* Parallels Desktop 11.2.0-32581
* Chef 12.11.18-1
* Ruby 2.1.5-2+deb8u2
* Rubygems 2.6.4

| Provider          | URL                                                                                                                                                                                                                                                                                                                                                                                 |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/debian-8.5.0-amd64](https://atlas.hashicorp.com/ffuenf/debian-8.5.0-amd64)                                                                                                                                                                                                                                                                                                  |
| Virtualbox        | [debian-8.5.0-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion     | [debian-8.5.0-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_vmware_SHA512SUM)                 |
| Parallels Desktop | [debian-8.5.0-amd64_parallels.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_parallels.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_parallels_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-8.5.0-amd64_parallels_SHA512SUM)     |

#### Debian Wheezy 7.x

##### Debian Wheezy 7.11.0 x86_64

* VMware Tools 10.0.6 build-3595377
* VirtualBox Guest Additions 5.0.22
* Parallels Desktop 11.2.0-32581
* Chef 12.11.18-1
* Ruby 1.9.3.194-8.1+deb7u5
* Rubygems 2.6.4

| Provider          | URL                                                                                                                                                                                                                                                                                                                                                                                     |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Atlas             | [ffuenf/debian-7.11.0-amd64](https://atlas.hashicorp.com/ffuenf/debian-7.11.0-amd64)                                                                                                                                                                                                                                                                                                    |
| Virtualbox        | [debian-7.11.0-amd64_virtualbox.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_virtualbox.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_virtualbox_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_virtualbox_SHA512SUM) |
| VMWare Fusion     | [debian-7.11.0-amd64_vmware.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_vmware.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_vmware_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_vmware_SHA512SUM)                 |
| Parallels Desktop | [debian-7.11.0-amd64_parallels.box](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_parallels.box) [SHA256SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_parallels_SHA256SUM) [SHA512SUM](https://s3.eu-central-1.amazonaws.com/ffuenf-vagrantboxes/debian/debian-7.11.0-amd64_parallels_SHA512SUM)     |

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
- Copyright:: 2016, ffuenf

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
