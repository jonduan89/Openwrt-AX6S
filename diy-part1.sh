#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default

#sed -i 's#coolsnowwolf/luci#jonduan89/luci#g' feeds.conf.default

# Adguard Home
#echo 'src-git adguardhome_app https://github.com/panther706/luci-app-adguardhome.git' >>feeds.conf.default

#sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' ./target/linux/mediatek/Makefile

# Add themes
cd package/lean
git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge.git
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config.git
git clone https://github.com/thinktip/luci-theme-neobird.git
git clone https://github.com/rosywrt/luci-theme-rosy.git

# Adguard Home
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git

# Smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git

# Change kernel to 5.15
