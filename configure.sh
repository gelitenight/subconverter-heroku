#!/bin/sh

# Download
wget https://github.com/tindy2013/subconverter/releases/latest/download/subconverter_linux64.tar.gz
tar -xvf subconverter_linux64.tar.gz
rm subconverter_linux64.tar.gz
cd subconverter
chmod +x *

# 0. Select port 443 nodes from sub
rm pref-new.yml
rm pref.ini
wget https://raw.githubusercontent.com/sprindjack/subconverter/master/base/pref-new.yml
wget https://raw.githubusercontent.com/sprindjack/subconverter/master/base/pref.ini
chmod +x *

# DIY Part
# 1. Configure subdomain
sed -i "s/http:\/\/127.0.0.1:25500/https:\/\/127.0.0.1:25500/g" pref-new.yml
sed -i "s/http:\/\/127.0.0.1:25500/https:\/\/127.0.0.1:25500/g" pref.ini
abc=$Domain
sed -i "s/127.0.0.1:25500/${abc}/g" pref-new.yml
sed -i "s/127.0.0.1:25500/${abc}/g" pref.ini

# 2. Set expire time to infinite, manually update if the sub config changed
# sed -i 's/86400/0/g' pref-new.yml
# sed -i 's/86400/0/g' pref.ini

# Run
./subconverter
