# dev-env
Development Environment using Vagrant and Docker (Laradock) / LAMP / LEMP provision

### Requirement

    1. Virtual Box
    2. Vagrant
    3. git

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

    then run your laradock. see [http://laradock.io]
