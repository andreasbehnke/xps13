# Install all required software for developer workstation

# Install java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

# Install virtual box
sudo echo 'deb http://download.virtualbox.org/virtualbox/debian wily contrib'  | sudo tee --append /etc/apt/sources.list
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install dkms virtualbox-5.0 -y
