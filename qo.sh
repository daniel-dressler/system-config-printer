#!/bin/bash
mkdir ../test/
cp -R ./* ../test/
cd ../test
debuild -uc -us
rm -rf ../test/
sudo dpkg -i ../system-config-printer*.deb

