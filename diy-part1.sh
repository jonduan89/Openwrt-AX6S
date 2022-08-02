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
echo 'src-git passwall https://github.com/jonduan89/luci-app-passwall.git' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small.git' >>feeds.conf.default
echo 'src-git argonAX6S https://github.com/jonduan89/luci-theme-argon-AX6S.git' >>feeds.conf.default
echo 'src-git edge https://github.com/kiddin9/luci-theme-edge.git' >>feeds.conf.default
echo 'src-git argon https://github.com/jerrykuku/luci-theme-argon.git' >>feeds.conf.default

# Add themes
#cd package/lean
#git clone https://github.com/jonduan89/luci-theme-argon-AX6S.git
#git clone https://github.com/kiddin9/luci-theme-edge.git
#git clone https://github.com/jerrykuku/luci-theme-argon.git
