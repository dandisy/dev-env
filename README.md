# dev-env
Development Environment using Vagrant and Docker (Laradock) / LAMP / LEMP provision

### 1. Requirements

#### Knowledges

- Git knowledge [https://git-scm.com](https://git-scm.com)
- Vagrant knowledge [https://www.vagrantup.com](https://www.vagrantup.com)
- Docker knowledge [https://www.docker.com](https://www.docker.com)

#### System

1. Virtual Box [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
2. Vagrant [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)
3. git [https://git-scm.com/downloads](https://git-scm.com/downloads)

### 2. Installation

    - git clone https://github.com/dandisy/dev-env.git
    - cd dev-env

run these if you want to use laradock

    - cd provision/src
    - git clone https://github.com/Laradock/laradock.git
    - cp laradock/env-example laradock/.env
    - cd ../../

then

    - vagrant up

by now you can go into development environment

    - vagrant ssh

if you use laradock, run

    - cd /var/www/laradock
    
then run your laradock. see [http://laradock.io](http://laradock.io)

### 3. Usage

Run your browser, visit to http://localhost:9090 or http://192.168.90.90

#
by dandi@redbuzz.co.id
