#!/bin/bash
geth --datadir $HOME/Workspace/EtherBox/datadir/03 init $HOME/Workspace/BlockChain/ethereum-private-net/geth/genesis.json

datadirPath=$HOME/Workspace/EtherBox/datadir/03
keystorePath=$HOME/Workspace/BlockChain/ethereum-private-net/geth/keystore
passwordPath=$HOME/Workspace/BlockChain/ethereum-private-net/geth/password
networkid="20160707"
port="30304"

echo "The datadir path is $datadirPath"
echo "The keystore path is $keystorePath"
echo "The password path is $passwordPath"
echo "The networkid is $networkid"
echo "The port is $port"

geth --networkid $networkid --datadir $datadirPath \
--port $port --etherbase "80d5f860c2a76bc18ff13adb6d826d16448c489e" --nodiscover \
--rpc --rpcaddr "0.0.0.0" \
--rpcapi "eth,net,web3,admin,personal" \
--rpccorsdomain="*" \
--keystore $keystorePath \
--password $passwordPath \
--unlock "0,1,2" \
console
