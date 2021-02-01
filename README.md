# swissdlt_development

*****************************
# How to install a full node on Ubuntu 20.4
*****************************
sudo apt install git

sudo apt-get install screen

sudo apt-get install ntpdate

sudo ntpdate -s time.nist.gov

sudo add-apt-repository -y ppa:ethereum/ethereum

sudo apt-get update

sudo apt-get install ethereum

git clone https://github.com/BCTSAG/swissdlt_development

mv swissdlt_development swissdlt

cd swissdlt

geth --datadir node1/ account new

#send the address that is created to BCTS 

geth --datadir node1/ init swissdlt.json

#start up a node that runs with a rpc on http://localhost:8540

./start-node.sh


*****************************
# How to install a validating node
*********************************

#like above but after creating the address:

#send the address that is created to BCTS 

#send the enode-info that is created to BCTC eg using geth attach node1/geth.ipc and then >admin.nodeInfo and send the output to BCTS

#BCTS will send out a request to all node validators to add you and add your node-info to node1/static-node.json if you do not have a static IP please use ngrok or similar to get a static IP and let us know

#wait for confirmation until all validators have added you

#add the adress to the start-validating-node.sh script

#use the passwort that you created correctly with unlocking either via geth --unlock <YOUR_ACCOUNT_ADDRESS> --password <YOUR_PASSWORD> or, and this is NOT RECOMMENDED

#screen -S node1 geth --datadir node1/ --syncmode 'full' --port 30311 --rpc --rpcaddr 'http://127.0.0.1' --rpccorsdomain "*" --rpcport 8540 --rpcapi 'personal,eth,net,web3,txpool,miner'  --networkid 99 --gasprice '1' -unlock 'ACCOUNTADDRESSwithoutTHE_0x' --password node1/passwort.txt --mine --allow-insecure-unlock 

#you could put this screen command in a startup script eg. ./start-node_validating.sh 

#make sure health_check.sh is in crontab eg like using crontab -e and adding these two lines and uncommenting them

#@reboot ~/swissdlt/health_check.sh

#*/1 * * * * ~/swissdlt/health_check.sh



