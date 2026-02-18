#!/bin/bash

# Adjust source code
patch -p1 -f < $(dirname "$0")/luci.patch

# Update packages
sed -i '/luci-app-attendedsysupgrade/d' feeds/luci/collections/luci/Makefile
