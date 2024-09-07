#!/bin/bash

if [[ "`grep 'gerente' /etc/group | grep 'bruno'`" == "" ]]; then

	exit 1
	
else

	exit 0
	
fi
