#!/bin/bash
1-
sudo addgroup aluno
sudo addgroup professor
sudo addgroup gerente

2-
sudo mkdir /srv
sudo chown root:gerente /srv

3-
sudo mkdir /srv/alunos
sudo mkdir /srv/professores
sudo chown root:aluno /srv/alunos
sudo chown root:professor /srv/professores

4-
sudo chmod 751 /srv
sudo chmod 770 /srv/alunos
sudo chmod 770 /srv/professores

5-
sudo adduser --ingroup professor --home /srv/professores/bruno --gecos "" --disabled-login bruno

6-
sudo usermod -aG gerente bruno

7-
sudo adduser --ingroup aluno --home /srv/alunos/maria --gecos "" --disabled-login maria
sudo adduser --ingroup aluno --home /srv/alunos/joao --gecos "" --disabled-login joao

8-
sudo usermod -e 2024-12-31 -f 90 joao
sudo usermod -e 2024-12-31 -f 90 maria
