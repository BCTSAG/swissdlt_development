!/bin/bash
#this sets up a node running in the background with screen
screen -S node1 geth --datadir node1/ --syncmode 'full' --port 30311 --rpc --rpcaddr 'localhost' --rpcport 8545 --rpcapi 'personal,eth,net,web3,txpool,miner' --networkid 99 --gasprice '1'
