#!/bin/bash
geth --datadir node1/ --syncmode 'full' --port 30311 --rpc --rpcaddr 'http://127.0.0.1' --rpccorsdomain "*" --rpcport 8540 --rpcapi 'personal,eth,net,web3,txpool,miner' --bootnodes 'enode://79f27a4562c15222cc74f9832099dbe4a6e34aebbc7f61c8cd172d1142ece285f0ca2349c34c6512c2b6432349be41fd5e33622aec0a71cba0ebc97d8081eebc@127.0.0.1:30312' --networkid 99 --gasprice '1' 


