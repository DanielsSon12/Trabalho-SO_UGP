#!/bin/bash
1-
sudo groupadd aluno
sudo groupadd professor
sudo groupadd gerente

2-
sudo mkdir -p /srv
sudo chown root:gerente /srv
sudo chmod 750 /srv

3-
sudo mkdir /srv/alunos
sudo mkdir /srv/professores
sudo chown root:aluno /srv/alunos
sudo chown root:professor /srv/professores

4-
sudo chmod 750 /srv
sudo chmod 770 /srv/alunos
sudo chmod 770 /srv/professores

5-
sudo useradd -m -d /srv/professores/bruno -g professor --gecos "" --disabled-login bruno

6-
sudo usermod -aG gerente bruno

7-
sudo useradd -m -d /srv/alunos/joao -g aluno --gecos "" --disabled-login joao
sudo useradd -m -d /srv/alunos/maria -g aluno --gecos "" --disabled-login maria

8-
sudo chage -E 2024-12-31 joao
sudo chage -E 2024-12-31 maria
sudo chage -M 90 joao
sudo chage -M 90 maria
