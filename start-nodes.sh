#!/bin/bash
screen -S node1 geth --datadir node1/ --syncmode 'full' --port 30311 --rpc --rpcaddr 'localhost' --rpcport 8540 --rpcapi 'personal,eth,net,web3,txpool,miner' --networkid 99 --gasprice '1'


