#!/bin/bash
clear

nmn-cli stop

sleep 10

rm -rf ~/.nmn/blocks
rm -rf ~/.nmn/database
rm -rf ~/.nmn/chainstate
rm -rf ~/.nmn/peers.dat

cp ~/.nmn/nmn.conf ~/.nmn/nmn.conf.backup
sed -i '/^addnode/d' ~/.nmn/nmn.conf
cat <<EOL >>  ~/.nmn/nmn.conf
EOL

nmnd
