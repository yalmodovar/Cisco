#!/bin/bash 
umount /myshare || true
set -e
mkdir -p /myshare 
mount -t cifs -o "username=$mount_username,password=$mount_password,vers=2.0" $nas_path/public/Software/McAfee /myshare
mkdir -p /tmp/mcafee 
cp -p /myshare/McAFeeSmartInstall_Linux.sh /tmp/mcafee  
cd /tmp/mcafee 
./McAFeeSmartInstall_Linux.sh
umount /myshare 
cd /tmp && rm -rf mcafee
rmdir /myshare 