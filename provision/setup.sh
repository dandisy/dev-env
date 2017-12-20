#!/bin/bash
#export DEBIAN_FRONTEND=noninteractive

# Start
echo "Provisioning DandiSy-Dev-Env virtual machine..."

# Update ubuntu repositories
echo "Please waiting!"
echo "This may be take a long time, please get your coffee..."
apt-get update > /dev/null

# Tools
echo "Installing PHP-CLI"
echo "-------------------//"
apt-get install -y php7.0-cli
echo "--------------------//"

# Composer
echo "Installing Composer"
echo "--------------------//"
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
echo "----------------------------//"

#NodeJs
echo "Installing NodeJs using NVM"
echo "----------------------------//"
apt-get install -y build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
source ~/.profile
nvm install 6.10.3
echo "------------------//"

# Docker
echo "Installing Docker"
echo "------------------//"
wget -qO- https://get.docker.com/ | sh
usermod -aG docker ${whoami}
echo "--------------------------//"

# Docker Compose
echo "Installing Docker Compose"
echo "--------------------------//"
COMPOSE_VERSION=`git ls-remote https://github.com/docker/compose | grep refs/tags | grep -oP "[0-9]+\.[0-9][0-9]+\.[0-9]+$" | tail -n 1`
sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
chmod +x /usr/local/bin/docker-compose
sh -c "curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"
echo "---------------//"

# End
echo "Your Docker is"
docker -v
echo "Your Docker Compose is"
docker-compose -v
echo "Docker Status is"
service docker status
echo "Finished DandiSy-Dev-Env provisioning."
echo "by DandiSy"