#!/bin/bash
mkdir ../test/
cp -R ./* ../test/
cd ../test
rm -f ../test/udev/.*
rm -f ../test/cupshelpers/.*
rm -f ../test/udev/*.o
rm -f ../test/udev/udev-configure-printer
rm -f ../test/qo.sh
rm -f ../test/wo.sh
debuild -uc -us || exit 1
rm -rf ../test/
sudo dpkg -i ../system-config-printer*.deb

