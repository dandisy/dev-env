# dev-env
Development Environment using Vagrant and Docker (Laradock) / LAMP / LEMP provision

### Requirement

Knowledge

    - Git knowledge https://git-scm.com
    - Vagrant knowledge [https://www.vagrantup.com](https://www.vagrantup.com)
    - Docker knowledge [https://www.docker.com](https://www.docker.com)

System

    1. Virtual Box [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
    2. Vagrant [https://www.vagrantup.com/downloads.html](https://www.vagrantup.com/downloads.html)
    3. git [https://git-scm.com/downloads](https://git-scm.com/downloads)

### Installation

    - git clone https://github.com/dandisy/dev-env.git
    - cd dev-env/provision/src
    - git clone https://github.com/Laradock/laradock.git
    - cp laradock/env-example laradock/.env
    - cd ../../
    - vagrant up

### Usage

    - vagrant ssh
    - cd /var/www/laradock

    then run your laradock. see [https://laradock.io](https://laradock.io)


#
by dandi@redbuzz.co.id
