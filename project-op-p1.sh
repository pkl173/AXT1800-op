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
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# Add luci-app-ssr-plus
#pushd package/lean
#git clone --depth=1 https://github.com/fw876/helloworld
#popd

# Clone community packages to package/community
#mkdir package/community
#pushd package/community

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
rm -rf ../lean/luci-theme-argon

# Add Diskman
#git clone https://github.com/lisaac/luci-app-diskman

# Add VSSR(HelloWorld)
git clone https://github.com/jerrykuku/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr
#cd luci-app-vssr/root/etc/vssr/
#echo 'china_ssr.txt
#config/black.list
#config/white.list
#dnsmasq.oversea/oversea_list.conf
#dnsmasq.ssr/ad.conf
#dnsmasq.ssr/gfw_base.conf
#dnsmasq.ssr/gfw_list.conf' | xargs rm
#cd ../../../