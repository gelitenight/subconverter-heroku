#!/bin/sh

# Download
wget https://github.com/tindy2013/subconverter/releases/latest/download/subconverter_linux64.tar.gz
tar -xvf subconverter_linux64.tar.gz
rm subconverter_linux64.tar.gz
cd subconverter
chmod +x *

# Configure your subdomain
sed -i "s/(http://127.0.0.1:25500)/(https://127.0.0.1:25500)/g" pref-new.yml
sed -i "s/(http://127.0.0.1:25500)/(https://127.0.0.1:25500)/g" pref.ini
abc=$Domain
sed -i "s/127.0.0.1:25500/${abc}/g" pref-new.yml
sed -i "s/127.0.0.1:25500/${abc}/g" pref.ini

# Run
./subconverter
