#!/bin/bash

# This program is an automated cooking script for LibreMesh-SDK
# Execute from one level above [just outside] lime-sdk extracted folder
# All routers you use should be in this file for one touch autocooking

# This file is for openNET.io. Change your community-specific details if you whish to use it for yours! :]

# Started on 20170519 | Nk
# Last updated on 20170526 | Nk

# Uncomment to install packages on ubuntu
# sudo apt-get update
# sudo apt-get -y install gawk zlib1g-dev libncurses5-dev g++ flex git

echo
echo "starting cook"
echo

dir=lime-sdk
git clone https://github.com/libremesh/lime-sdk.git temp
rsync -a temp/ $dir/
rm -rf temp

# Begin community-specific details

# openNET.io Note: Packages still to test: haveged

# Uncomment and specify your custom options.conf file location relative to this script if you are using one
# rsync -a <directory-name-here>/options.conf $dir/options.conf

mv $dir/communities $dir/communities-previousrun
mv $dir/output $dir/output-previousrun

cd $dir

# List your "cooker" commands here, with customizable packages and options for each one:

# Archer C7 v2 [standard and openNODE]

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=archer-c7-v2

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX_ONC7 -c ar71xx/generic --profile=archer-c7-v2

# 1043 ND v3 [standard and openNODE (both sides)]

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=tl-wr1043nd-v3

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX_ON3N -c ar71xx/generic --profile=tl-wr1043nd-v3

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX_ON32 -c ar71xx/generic --profile=tl-wr1043nd-v3

# 1043 ND v4 [standard and openNODE]

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=tl-wr1043nd-v4

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX_ON3N -c ar71xx/generic --profile=tl-wr1043nd-v4

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX_ON32 -c ar71xx/generic --profile=tl-wr1043nd-v4

# WBS 210

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=wbs210

# Unifi AC Lite

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=ubnt-unifiac-lite

# Unifi AC Pro

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=ubnt-unifiac-pro

# AR 150

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=gl-ar150

# AR 300

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=gl-ar300

# AR 300M

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ar71xx/generic --profile=gl-ar300m

# 3020 8M

PKG="lime-full luci-ssl wpad authsae hostapd  ath10k-firmware-qca988x kmod-ath10k -wpad-mini" \
./cooker --flavor=lime_default --remote \
--community=openNET.io/1144-W2PA-LIME-XXXX -c ramips/mt7620 --profile=wt3020-8M

echo "cook finished"
echo
