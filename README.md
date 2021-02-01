# swissdlt_development

How to install a full node
*****************************
sudo add-apt-repository -y ppa:ethereum/ethereum

sudo apt-get update

sudo apt-get install ethereum

git clone https://github.com/BCTSAG/swissdlt_development

cd swissdlt_development

mkdir node1

geth --datadir node1/ account new

#send the address that is created to BCTS 

#start up a node that runs with a rpc on http://localhost:8540

./start-node.sh


How to install a validating node
*********************************

sudo add-apt-repository -y ppa:ethereum/ethereum

sudo apt-get update

sudo apt-get install ethereum

git clone https://github.com/BCTSAG/swissdlt_development

cd swissdlt_development

mkdir node1

geth --datadir node1/ account new

#send the address that is created to BCTS 
#BCTS will send out a request to all node validators to add you
#wait for confirmation

#add the adress to the start-validating-node.sh script
#use the passwort that you created correctly

#start up a node that runs with a rpc on http://localhost:8540
./start-node_validating.sh
