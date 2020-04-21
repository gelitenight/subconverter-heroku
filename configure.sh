#!/bin/sh

# Download
wget https://github.com/sprindjack/subconverter/releases/latest/download/subconverter_linux64.tar.gz
tar -xvf subconverter_linux64.tar.gz
rm subconverter_linux64.tar.gz
cd /subconverter
chmod +x *

# Run
./subconverter
