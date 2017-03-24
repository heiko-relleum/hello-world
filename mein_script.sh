#!/bin/bash
#Ausgaben in Variable schreiben

#Variablendefinition
#suchwort=psql

#liste=$(apropos $suchwort)
#echo "      Player-Liste:"
#echo "$liste"

if [ -f ~/.bash_aliases ]; then
	echo ".bash_aliases exists" 
       . ~/.bash_aliases
	echo $PWD
fi

PSQL_TENANT="psql -h localhost -U magicline magicline"
PSQL_MASTER="psql -h localhost -U magicline magicline_master"
TENANT_NAME="$1"
EXISTING_TENANTS=$(echo "SELECT count(*) FROM mlm_magicline_client where name = '$TENANT_NAME'" | $PSQL_MASTER -A -t)

ergebnis=$?
echo tenant_name:
echo "$TENANT_NAME"
echo ergebnis:
echo "$EXISTING_TENANTS" >> test.txt



# Dies ist ein Kommentar
#message="hallo, Welt"
#unset message

