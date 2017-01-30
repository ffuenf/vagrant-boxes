# CHANGELOG for vagrant-boxes

This file is used to list changes made in each version of vagrant-boxes.

## v1.0.44:
* added Debian Jessie 8.7.1 x86_64
* depreciate Debian Jessie 8.6.0 x86_64
* upgrade Chef 12.18.31-1
* upgrade Rubygems 2.6.10
* upgrade VirtualBox Guest Additions 5.1.14

## v1.0.43:
* upgrade VirtualBox Guest Additions 5.1.12

## v1.0.42:
* upgrade Chef 12.17.44-1
* depreciate Ubuntu Wily Werewolf 15.10 Server x86_64

## v1.0.41:
* upgrade VirtualBox Guest Additions 5.1.10

## v1.0.40:
* upgrade Chef 12.16.42-1
* upgrade VMware Tools 10.0.10 build-4301679
* upgrade Rubygems 2.6.8
* move checksum logic to new packer post-processor
* add manifests via new packer post-processor
* completely abandon parallels (cli commands only works with pro or business versions)

## v1.0.39:
* upgrade VirtualBox Guest Additions 5.1.8

## v1.0.38:
* upgrade Chef 12.15.19-1
* upgrade Parallels Desktop 12.0.2-41353
* added Ubuntu Yakkety Yak 16.10 Server x86_64
* depreciate Debian Wheezy 7.11.0 x86_64
* suspend Parallels Desktop builds as v12 is not supported by packer atm

## v1.0.37:
* upgrade Chef 12.14.89-1

## v1.0.36:
* added Debian Jessie 8.6.0 x86_64
* depreciate Debian Jessie 8.5.0 x86_64
* added Ubuntu Xenial Xerus 16.04.1 Server x86_64
* depreciate Ubuntu Xenial Xerus 16.04 Server x86_64
* upgrade Chef 12.14.77-1

## v1.0.35:
* upgrade Chef 12.14.60-1
* upgrade VMware Tools 10.0.10 build-4301679

## v1.0.34:
* upgrade Chef 12.13.37-1
* downgrade to VirtualBox Guest Additions 5.0.26

## v1.0.33:
* upgrade Chef 12.13.30-1
* upgrade Parallels Desktop 11.2.1-32626

## v1.0.32:
* upgrade Chef 12.12.15-1
* upgrade VirtualBox Guest Additions 5.1.0
* debian fix for vagrant halt hang (@abraithwaite)

## v1.0.31:
* upgrade VirtualBox Guest Additions 5.0.24
* upgrade Rubygems 2.6.6
* upgrade Chef 12.12.13-1

## v1.0.30:
* added Debian Jessie 8.5.0 x86_64
* added Debian Wheezy 7.11.0 x86_64
* depreciate Debian Jessie 8.4.0 x86_64
* depreciate Debian Wheezy 7.10.0 x86_64
* upgrade Chef 12.11.18-1

## v1.0.29:
* upgrade Chef 12.10.24-1

## v1.0.28:
* upgrade VirtualBox Guest Additions 5.0.20
* upgrade VMware Tools 10.0.6 build-3595377
* upgrade Parallels Desktop 11.2.0-32581
* upgrade Chef 12.9.41-1
* upgrade Rubygems 2.6.4

## v1.0.27:
* added Ubuntu Xenial Xerus 16.04 Server x86_64
* re-added Ubuntu Wily Werewolf 15.10 Server x86_64 for VMware Fusion

## v1.0.26:
* upgrade VirtualBox Guest Additions 5.0.18

## v1.0.25:
* added Debian Wheezy 7.10.0 x86_64
* depreciate Debian Wheezy 7.9.0 x86_64
* fix cleanup (breaks vmtools installation)

## v1.0.24:
* added Debian Jessie 8.4.0 x86_64
* depreciate Debian Jessie 8.3.0 x86_64
* use dist-upgrade and install build packages in preseed
* upgrade Rubygems 2.6.3
* upgrade packer 0.10.0
* upgrade Chef 12.9.38-1

## v1.0.23:
* upgrade Chef 12.8.1-1

## v1.0.22:
* added Ubuntu Trusty Tahr 14.04.4 Server x86_64
* depreciate Ubuntu Trusty Tahr 14.04.3 Server x86_64
* depreciate Debian Squeeze 6.0.10 x86_64 (EOL 2016.02.29)
* depreciate Ubuntu Vivid Vervet 15.04 Server x86_64 (EOL 2016.02.04)
* upgrade VirtualBox Guest Additions 5.0.16
* upgrade Parallels Desktop 11.1.3-32521
* upgrade Rubygems 2.6.1
* upgrade packer 0.9.0

## v1.0.21:
* upgrade Chef 12.7.2-1

## v1.0.20:
* added Debian Jessie 8.3.0 x86_64
* depreciate Debian Jessie 8.2.0 x86_64
* upgrade Rubygems 2.5.2
* re-introduce Parallels Desktop support

## v1.0.19:
* upgrade VirtualBox Guest Additions 5.0.14

## v1.0.18:
* upgrade Chef 12.6.0-1
* upgrade Rubygems 2.5.1
* upgrade VMware Tools 10.0.5 build-3228253
* install https transport for apt
* suspend Ubuntu Wily Werewolf 15.10 Server x86_64 for VMware Fusion due to https://github.com/ffuenf/vagrant-boxes/pull/22

## v1.0.17:
* upgrade VirtualBox Guest Additions 5.0.10
* depreciate Ubuntu Utopic Unicorn 14.10 Server x86_64 (build/installer fails actually)

## v1.0.16:
* upgrade VirtualBox Guest Additions 5.0.8
* upgrade VMware Tools 10.0.1 build-3160059
* added proper boot command for Ubuntu Wily Werewolf 15.10 Server x86_64
* update hashicorps download locations

## v1.0.15:
* upgrade VirtualBox Guest Additions 5.0.6
* upgrade Chef 12.5.1-1
* added Ubuntu Wily Werewolf 15.10 Server x86_64

## v1.0.14:
* switch back from open-vm-tools to VMware Tools
* upgrade VMware Tools 10.0.0 build-2977863
* upgrade Chef 12.4.3-1
* make disk size configurable

## v1.0.13:
* switch from VMware Tools to open-vm-tools
* upgrade open-vm-tools 2:8.8.0+2012.05.21-724730-1+nmu2+deb7u1
* added Debian Wheezy 8.2.0 x86_64
* added Debian Wheezy 7.9.0 x86_64
* depreciate Debian Wheezy 7.8.0 x86_64
* depreciate Debian Wheezy 8.1.0 x86_64
* depreciate Debian Wheezy 8.0.0 x86_64

## v1.0.12:
* added Ubuntu Trusty Tahr 14.04.3 Server x86_64
* depreciate Ubuntu Trusty Tahr 14.04.2 Server x86_64
* fix README (versions)
* fix preseed of Debian Jessie 8.1.0 x86_64
* increase disc size of VMs to 25G

## v1.0.11:
* upgrade VirtualBox Guest Additions 5.0.0
* upgrade Chef 12.4.1-1

## v1.0.10:
* retire Parallels Desktop support
* added Debian Jessie 8.1.0 x86_64
* upgrade Chef 12.4.0-1
* upgrade VMware Tools 9.9.3
* upgrade Rubygems 2.4.8

## v1.0.9:
* upgrade VirtualBox Guest Additions 4.3.28

## v1.0.8:
* upgrade Chef 12.3.0-1
* depreciate Debian Wheezy 7.7.0 x86_64
* depreciate Ubuntu Trusty Tahr 14.04.1 Server x86_64
* depreciate Ubuntu Saucy Salamander 13.10 Server x86_64
* revert /tmp on tmpfs from previous version as /tmp may grow above 512M

## v1.0.7:
* added Debian Jessie 8.0.0 x86_64
* added Ubuntu Vivid Vervet 15.04Server x86_64
* Enable ACL's on the filesystem and use the discard flag (from [ties](https://github.com/ties/my-opinionated-packer-vagrant-boxes))
* /tmp on tmpfs (from [ties](https://github.com/ties/my-opinionated-packer-vagrant-boxes))

## v1.0.6:
* upgrade VirtualBox Guest Additions 4.3.26
* upgrade Chef 12.2.1-1

## v1.0.5:
* upgrade VirtualBox Guest Additions 4.3.24
* upgrade Chef 12.1.1-1

## v1.0.4:
* update Ubuntu Trusty Tahr 14.04.2 Server x86_64
* upgrade VirtualBox Guest Additions 4.3.22
* upgrade Chef 12.1.0-1
* upgrade Rubygems 2.4.6
* upgrade serf 0.6.4
* depreciate Debian Wheezy 7.6.0 x86_64

## v1.0.3:
* added Debian Wheezy 7.8.0 x86_64

## v1.0.2:
* upgrade Chef 12.0.3-1

## v1.0.1:
* upgrade VMware Tools 9.9.0
* upgrade VirtualBox Guest Additions 4.3.20
* upgrade Rubygems 2.4.5
* upgrade Chef 12.0.1-1
* upgrade packer 0.7.5
* move Vagrantcloud/Atlas logic to Thor (remove post-processor)
* Vagrantcloud is now Atlas
* getchef.com is now chef.io

## v1.0.0:
* upgrade VMware Tools 9.8.4
* upgrade VirtualBox Guest Additions 4.3.18
* introduce Parallels Desktop support
* re-organize repository to match [opscode/bento](https://github.com/opscode/bento)
* add Thorfile for automating testing and build
* add [travis-ci](https://travis-ci.org/ffuenf/vagrant-boxes) testing (validate packer templates)
* [post-processor] automate generation of SHA256 / SHA512 checksums
* [post-processor] automate upload to Amazon S3 eu-central-1 (Frankfurt)
* [post-processor] automate vagrant-cloud release and metadata
* depreciate hosting on Google Drive

## v0.0.37:
* added Ubuntu Utopic Unicorn 14.10 Server x86_64
* added Debian Wheezy 7.7.0 x86_64
* bump version naming for Ubuntu Trusty Tahr 14.04.1 Server x86_64
* add hosting on Amazon S3 eu-central-1 (Frankfurt)

## v0.0.36:
* upgrade Rubygems 2.4.2
* upgrade Chef 11.16.4-1

## v0.0.35:
* mitigate USN-2362-1 / DSA 3032-1 aka Shellshock

## v0.0.34:
* upgrade Chef 11.16.2-1
* upgrade packer 0.7.1
* upgrade VirtualBox Guest Additions 4.3.16

## v0.0.33:
* upgrade Chef 11.16.0-1
* upgrade VMware Tools 9.8.3
* upgrade VirtualBox Guest Additions 4.3.14
* upgrade packer 0.6.1
* depreciate Debian Wheezy 7.5.0 x86_64

## v0.0.32:
* upgrade Chef 11.14.2-1
* upgrade Rubygems 2.4.1
* install rsync by default

## v0.0.29:
* upgrade Ubuntu Trusty Tahr 14.04.1 Server x86_64

## v0.0.28:
* upgrade Debian Squeeze 6.0.9 x86_64 to Debian Squeeze 6.0.10 x86_64

## v0.0.27:
* added Debian Wheezy 7.6.0 x86_64
* upgrade Chef 11.12.8-2
* upgrade Rubygems 2.3.0

## v0.0.26:
* addressing [CVE-2014-0224 / CVE-2014-0221 / CVE-2014-0195 / CVE-2014-0198 / CVE-2010-5298 / CVE-2014-3470](https://www.openssl.org/news/secadv_20140605.txt) on prebuild boxes
* upgrade Chef 11.12.8-1
* upgrade VirtualBox Guest Additions 4.3.12

## v0.0.25:
* addressing [CVE-2014-0196](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0196) on prebuild boxes

## v0.0.24:
* upgrade to Chef 11.12.4-1
* Update vagrant.sh to handle redirection at github [#10]
* depreciate Debian Wheezy 7.4.0 x86_64
* depreciate Ubuntu Raring Ringtail 13.04 Server x86_64
* depreciate Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64

## v0.0.23:
* added Debian Wheezy 7.5.0 x86_64

## v0.0.22:
* added Ubuntu Trusty Tahr 14.04 Server x86_64

## v0.0.21:
* upgrade to Chef 11.12.2-1
* add optional scripts for [packer](http://www.packer.io), [serf](http://www.serfdom.io) and [docker](http://www.docker.io)

## v0.0.20:
* [fix Heartbleed Bug (CVE-2014-0160)](http://heartbleed.com)
* upgrade to Chef 11.12.0-1
* introduce ruby and rubygems
* depreciate Debian Wheezy 7.3.0 x86_64
* discontinue lxc-docker prebuild boxes (install it via provisioning instead)

## v0.0.19:
* fix VirtualBox Guest Additions 4.3.10 on prebuild boxes (#8)
* fix installation of insecure vagrant.pub (use curl instead of wget)
* remove superfluous content

## v0.0.18:
* upgrade to VirtualBox Guest Additions 4.3.10 on prebuild boxes
* upgrade to lxc-docker 0.9.1 on prebuild boxes

## v0.0.17:
* added Debian Wheezy 7.4.0 x86_64 with [lxc-docker](http://www.docker.io/) support
* added Ubuntu Saucy Salamander 13.10 Server x86_64 with [lxc-docker](http://www.docker.io/) support

## v0.0.16:
* depreciate Debian Wheezy 7.2.0 x86_64
* depreciate Debian Wheezy 7.1.0 x86_64
* depreciate Debian Wheezy 7.0.0 x86_64
* upgrade Debian Squeeze 6.0.7 x86_64 to Debian Squeeze 6.0.9 x86_64
* upgrade to Chef 11.10.4-1 and VirtualBox Guest Additions 4.3.8 on Debian Squeeze 6.0.9 x86_64
* extend cleanup on Debian Squeeze 6.0.9 x86_64
* remove lxc-docker-0.9.0 on Ubuntu Raring Ringtail 13.04 Server x86_64
* remove lxc-docker-0.9.0 on Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64
* move prebuild boxes from Amazon S3 to [DropBox](https://www.dropbox.com/sh/xqyeht0vdivoxcl/iYO49Wd3p3/vagrant-boxes)
* introduce [SHA512SUMS](https://www.dropbox.com/sh/xqyeht0vdivoxcl/iYO49Wd3p3/vagrant-boxes/SHA512SUMS) for all prebuild boxes

## v0.0.15:
* introduce management of boxes metadata via [Vagrantcloud](https://www.vagrantcloud.com/ffuenf)
* extend cleanup on Debian Wheezy 7.4.0 x86_64
* extend cleanup on Debian Wheezy 7.3.0 x86_64
* extend cleanup on Ubuntu Saucy Salamander 13.10 Server x86_64
* extend cleanup on Ubuntu Raring Ringtail 13.04 Server x86_64
* extend cleanup on Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64
* upgrade Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64
* upgrade to VirtualBox Guest Additions 4.3.8 on Debian Wheezy 7.4.0 x86_64
* upgrade to Chef 11.10.4-1 and VirtualBox Guest Additions 4.3.8 on Debian Wheezy 7.3.0 x86_64
* upgrade to VirtualBox Guest Additions 4.3.8 on Ubuntu Saucy Salamander 13.10 Server x86_64
* upgrade to Chef 11.10.4-1, lxc-docker-0.9.0 and VirtualBox Guest Additions 4.3.8 on Ubuntu Raring Ringtail 13.04 Server x86_64
* upgrade to Chef 11.10.4-1, lxc-docker-0.9.0 and VirtualBox Guest Additions 4.3.8 on Ubuntu Precise Pangolin 12.04.4 LTS Server x86_64

## v0.0.14:
* upgraded to Chef 11.10.4-1 on Debian Wheezy 7.4.0 x86_64
* upgraded to Chef 11.10.4-1 on Ubuntu Saucy Salamander 13.10 Server x86_64

## v0.0.13:
* added Debian Wheezy 7.4.0 x86_64 (thanks to [crahan](https://github.com/crahan))

## v0.0.12:
### Features
* added Ubuntu Saucy Salamander 13.10 Server x86_64
* build virtualbox and vmware artifacts in parallel
* upgraded to Chef 11.10 and VirtualBox Guest Additions 4.3.6 on Debian Wheezy 7.3.0 x86_64
* added optional puppet recipe on Debian Wheezy 7.3.0 x86_64 in repository (not included in prebuild boxes)
* EXPERIMENTAL: added optional docker recipe on Debian Wheezy 7.3.0 x86_64 in repository (not included in prebuild boxes)
### Bugfixes
* upgrade to packer v0.5.1 (fix all templates)
* housekeeping

## v0.0.11:
* added Debian Wheezy 7.3.0 x86_64

## v0.0.10:
* upgraded to Chef 11.8.2 and VirtualBox Guest Additions 4.3.4 on Debian Wheezy 7.2.0 x86_64

## v0.0.9:
* upgraded to Chef 11.8.0 on Debian Wheezy 7.2.0 x86_64

## v0.0.8:
* added Debian Wheezy 7.2.0 x86_64

## v0.0.7:
### Features
* added Ubuntu Raring Ringtail 13.04 Server x86_64 with [docker.io](http://www.docker.io/) support
* added Ubuntu Precise Pangolin 12.04.3 LTS Server x86_64 with [docker.io](http://www.docker.io/) support
* dropped veewee support - we'll go with packer.io here
* dropped provisioning of puppet - we'll go with chef here
### Bugfixes
* bumped VirtualBox Guest Additions from 4.2.16 to 4.2.18 in Debian Wheezy 7.1.0 x86_64
* reorganized links to boxes on aws/s3
* tweaked the clean task ([thanks chris!](http://chr4.org/blog/2013/08/04/apt-get-cleanup-commands/))

## v0.0.6:
* fixed error with mixlib-shellout-1.2.0 which caused shellout commands in chef-11.4.0 to fail with [BUG] Segmentation fault. We use mixlib-shellout-1.1.0 instead in Debian Squeeze 6.0.7 x86_64

## v0.0.5:
### Features
* added vagrant post-processor to [packer](http://www.packer.io/) templates
* added additional Debian Wheezy 7.1.0 x86_64 (VirtualBox Guest Additions 4.2.16, Chef 11.6.0, Puppet 3.2.3) 
** Chef 11.6.0 adds [support for environments in chef-solo](http://docs.opscode.com/release/11-6/release_notes.html#chef-solo-environments))
** integrated needed kernel params for [docker.io](http://www.docker.io/) according to [this hint](https://github.com/dotcloud/docker/issues/251#issuecomment-20399450)
### Bugfixes
* fixed [packer](http://www.packer.io/) attributes (iso_md5 -> iso_checksum & iso_chechsum_type)
* [GH-#2] packer fails to install VirtualBox Guest Additions (missing XFree86 Window System)

## v0.0.4:
* added templates for [packer](http://www.packer.io/)

## v0.0.3:
* added Debian Wheezy 7.1.0 x86_64

## v0.0.2:
* added Debian Squeeze 6.0.7 x86_64

## v0.0.1:
* Initial release of vagrant-boxes
* added Debian Wheezy 7.0.0 x86_64