#!/bin/bash

if [[ ! -d /srv ]]; then

	echo "Pasta /srv nao existe!"
	exit 1
	
fi

permission="`sudo ls -la / | grep srv | awk '{ print $1 }'`"

if [[ "$permission" != "drwxr-x--x" ]]; then 
	echo "Erro de permissoes em /srv! "
	exit 1
fi


if [[ ! -d /srv/alunos ]]; then

	echo "Pasta /srv/alunos nao existe!"
	exit 1
	
fi

permission="`sudo ls -la /srv | grep alunos | awk '{ print $1 }'`"

if [[ "$permission" != "drwxrwx---" ]]; then 
	echo "Erro de permissoes em /srv/alunos! "
	exit 1
fi


if [[ ! -d /srv/professores ]]; then

	echo "Pasta /srv/alunos nao existe!"
	exit 1
	
fi

permission="`sudo ls -la /srv | grep professores | awk '{ print $1 }'`"

if [[ "$permission" != "drwxrwx---" ]]; then 
	echo "Erro de permissoes em /srv/alunos! "
	exit 1
fi



exit 0
