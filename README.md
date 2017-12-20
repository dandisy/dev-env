# dev-env
Development Environment using Vagrant and Docker (Laradock) / LAMP / LEMP provision

### Requirement

Knowledge

    - Basic Git knowledge (https://git-scm.com)
    - Basic Vagrant knowledge (https://www.vagrantup.com)

System

    1. Virtual Box (https://www.virtualbox.org/wiki/Downloads)
    2. Vagrant (https://www.vagrantup.com/downloads.html)
    3. git (https://git-scm.com/downloads)

### Install

    - git clone https://github.com/dandisy/dev-env.git
    - cd dev-env/provision/src
    - git clone https://github.com/Laradock/laradock.git
    - cp laradock/env-example laradock/.env
    - cd ../../
    - vagrant up

### Usage

    - vagrant ssh
    - cd /var/www/laradock

    then run your laradock. see (https://laradock.io)
