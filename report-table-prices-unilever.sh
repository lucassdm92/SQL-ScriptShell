#!/bin/sh

. ~/.bash_profile
. ~/setenv.sh
export NLS_LANG=AMERICAN_AMERICA.AL32UTF8

cd ${0%/*}

# Params
STORE_ID=$1
EMAILS=$2
SUBJECT=$3
FILE_NAME=$4

# Validations
if [ "$STORE_ID" == "" ]; then
	echo "STORE_ID is missing!"
	exit
fi
if [ "$EMAILS" == "" ]; then
	echo "EMAILS are missing!"
	exit
fi
if [ "$SUBJECT" == "" ]; then
	echo "SUBJECT is missing!"
	exit
fi
if [ "$FILE_NAME" == "" ]; then
	echo "FILE_NAME is missing!"
	exit
fi

# Remove o arquivo da execucao anterior
#rm -f sales-assist-report-${STORE_ID}-generated.sql

# Gera o decode de vendedor/loja
sqlplus -s /nolog << SQLEOF
connect `/opt/scripts/oracle/oracn.sh $amb Nagios_db_AD`
whenever sqlerror exit sql.sqlcode;
@report-table-prices-unilever.sql $STORE_ID
SQLEOF

# Envia o e-mail com o select acima
# Conexão de DEV: NC_AD_ADMIN_DEV
# Conexão de PRD: Nagios_db_AD
#`date -I`
echo "/opt/scripts/root/sendQueryToEmailCsv.pl Nagios_db_AD \"`cat report-table-prices-unilever.sql`\" \"${EMAILS}\" \"${SUBJECT}\" ${FILE_NAME}" | bash