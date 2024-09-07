#!/bin/bash

function check_validity(){
	user=$1

	validade_senha="`sudo grep "$user" /etc/shadow | cut -f7 -d':'`"

	data_expiracao="`sudo grep "$user" /etc/shadow | cut -f8 -d':'`"
	
	if [[ $validade_senha -ne 90 ]]; then
	
		echo "User '$user' nao possui 90 dias de validade de senha!"
		return 1
		
	fi
	
	if [[ $data_expiracao -ne 20088 ]]; then
	
		echo "User '$user' nao possui conta expirando 31/12/2024!"
		return 1
		
	fi	
	
	return 0;	
}


check_validity "joao"

[[ $? -ne 0 ]] && exit 1

check_validity "maria"

[[ $? -ne 0 ]] && exit 1

exit 0

