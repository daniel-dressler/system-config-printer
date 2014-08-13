#!/bin/bash
mkdir ../test/
cp -R ./* ../test/
cd ../test
debuild -uc -us || exit 1
rm -rf ../test/
sudo dpkg -i ../system-config-printer*.deb

