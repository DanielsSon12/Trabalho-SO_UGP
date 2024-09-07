#!/bin/bash

if [[ ! -d /srv/alunos ]]; then

	echo "Pasta /srv/alunos nao existe!"
	exit 1
	
fi

owner=`sudo ls -l /srv | grep alunos | awk '{ print $3 }'`
group=`sudo ls -l /srv | grep alunos | awk '{ print $4 }'`

if [[ "$owner" != "root" ]]; then

	echo "Dono de /srv/alunos '$owner', deve ser 'root'!"
	exit 1
	
fi

if [[ "$group" != "aluno" ]]; then

	echo "Grupo de /srv/alunos '$group', deve ser 'aluno'!"
	exit 1
	
fi


if [[ ! -d /srv/professores ]]; then

	echo "Pasta /srv/professores nao existe!"
	exit 1
	
fi

owner=`sudo ls -l /srv | grep professores | awk '{ print $3 }'`
group=`sudo ls -l /srv | grep professores | awk '{ print $4 }'`

if [[ "$owner" != "root" ]]; then

	echo "Dono de /srv/professores '$owner', deve ser 'root'!"
	exit 1
	
fi

if [[ "$group" != "professor" ]]; then

	echo "Grupo de /srv/professores '$group', deve ser 'professor'!"
	exit 1
	
fi

exit 0
