//NOTE How to Build Ethereum Dapp

//*INSTALL 
sudo apt install curl
curl -sL https://github.com/nodesource/distributions/blob/master/deb/setup_15.x | sudo -E bash -
sudo apt install nodejs
sudo npm install -g truffle
*/

//ADD METAMASK EXTENSION ON GOOGLE CHROME

//ADD GANACHE
wget https://github.com/trufflesuite/ganache/releases/download/v2.5.4/ganache-2.5.4-linux-x86_64.AppImage
chmod a+x ganache-2.5.4-linux-x86_64.AppImage
nohup ./ganache-2.5.4-linux-x86_64.AppImage &
*/

//*CONFIGURE PET-SHOP
mkdir election
cd election
truffle unbox pet-shop
*/

//*INSTALL SUBLIME-TEXT
snap install sublime-text --classic
subl .
*/

//*CREATE FILE
cd election
touch contracts/Election.sol





