#!/bin/bash

# set a default HOME_DIR environment variable if not set
HOME_DIR="${HOME_DIR:-/home/vagrant}";

case "$PACKER_BUILDER_TYPE" in


virtualbox-iso)
    VER='5.2.1-118447';
    ISO="VBoxGuestAdditions_$VER.iso";
    wget -q "https://www.virtualbox.org/download/testcase/VBoxGuestAdditions_$VER.iso" \
         -O $HOME_DIR/$ISO;
    #VER="`cat /home/vagrant/.vbox_version`";
    mkdir -p /tmp/vbox;
    mount -o loop $HOME_DIR/$ISO /tmp/vbox;
    sh /tmp/vbox/VBoxLinuxAdditions.run \
        || echo "VBoxLinuxAdditions.run exited $? and is suppressed." \
            "For more read https://www.virtualbox.org/ticket/12479";
    umount /tmp/vbox;
    rm -rf /tmp/vbox;
    rm -f $HOME_DIR/*.iso;
    ;;

vmware-iso)
    mkdir -p /tmp/vmware;
    mkdir -p /tmp/vmware-archive;
    mount -o loop $HOME_DIR/linux.iso /tmp/vmware;

    TOOLS_PATH="`ls /tmp/vmware/VMwareTools-*.tar.gz`";
    VER="`echo "${TOOLS_PATH}" | cut -f2 -d'-'`";
    MAJ_VER="`echo ${VER} | cut -d '.' -f 1`";

    echo "VMware Tools Version: $VER";

    tar xzf ${TOOLS_PATH} -C /tmp/vmware-archive;
    if [ "${MAJ_VER}" -lt "10" ]; then
        /tmp/vmware-archive/vmware-tools-distrib/vmware-install.pl --default;
    else
        /tmp/vmware-archive/vmware-tools-distrib/vmware-install.pl --force-install;
    fi
    umount /tmp/vmware;
    rm -rf  /tmp/vmware;
    rm -rf  /tmp/vmware-archive;
    rm -f $HOME_DIR/*.iso;
    ;;

*)
    echo "Unknown Packer Builder Type >>$PACKER_BUILDER_TYPE<< selected.";
    echo "Known are virtualbox-iso|vmware-iso";
    ;;

esac
