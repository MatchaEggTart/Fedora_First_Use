cd ~/Downloads/
rm ./hosts
wget https://raw.hellogithub.com/hosts
sudo rm /etc/hosts 
sudo mv ~/Downloads/hosts /etc/hosts
cd ~/Downloads/

