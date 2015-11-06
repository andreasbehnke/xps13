# install all required software for developer workstation

# install java 8 repository
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

# install software
# - virtualbox
# - vagrant
# - java 8
# - postgres client
# - pgadmin
sudo apt-get install dkms virtualbox vagrant oracle-java8-installer postgresql-client pgadmin3 -y
