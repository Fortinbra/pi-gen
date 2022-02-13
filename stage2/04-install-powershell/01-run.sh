#!/bin/bash -e
install -m 755 files/powershell-7.2.1-linux-arm64.tar.gz "${ROOTFS_DIR}/tmp/"

on_chroot << EOF
    mkdir -p /opt/microsoft/powershell/7
    tar zxf /tmp/powershell-7.2.1-linux-arm64.tar.gz -C /opt/microsoft/powershell/7
    chmod +x /opt/microsoft/powershell/7/pwsh
    ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh
EOF