#!/bin/bash

gid_professor="`grep 'professor' /etc/group | cut -f3 -d':'`"

gid_bruno="`grep 'bruno' /etc/passwd | cut -f4 -d':'`"

if [[ $gid_professor -ne $gid_bruno ]]; then

	echo "grupo de bruno = $gid_bruno, esperava $gid_professor!"
	
	exit 1

fi

pasta_home="`grep 'bruno' /etc/passwd | cut -f6 -d':'`"

if [[ "$pasta_home" != "/srv/professores/bruno" ]]; then

	echo "Pasta home de bruno '$pasta_home', deve ser /srv/professores/bruno!"
	
	exit 1

fi

exit 0
