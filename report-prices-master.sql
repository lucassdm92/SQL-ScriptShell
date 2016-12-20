select
   '(. /root/.bash_profile ; export NLS_LANG=AMERICAN_AMERICA.AL32UTF8 ; echo "/opt/scripts/root/sendQueryToEmailExcel.pl Nagios_db_AD \"`cat /opt/scripts/oracle/report/report-prices/report-prices.sql'  
   ||   ' | sed s/{STORE_ID}/'||gpcope.store_id||'/g' 
   ||   '`\" ' ||   '\"' 
   || gpcopto.value || '\" ' ||   '\"' || lower(gpcope.store_id) 
   || ' | alarme-hierarquia-precos `date -I` \" ' ||   '\"' || lower(gpcope.store_id) 
   || '-alarme-hierarquia-precos-`date -I`.xls\"" | bash )' 
from
   ecad_general_parameter gpcope,
   ecad_general_parameter gpcopto

where
   gpcope.general_parameter_id = 'REPORT_PRICES_ALERT_10_ENABLE'   
   and gpcope.value = 'true'   
   and gpcopto.general_parameter_id = 'REPORT_PRICES_ALERT_20_TO'   
   and gpcopto.store_id = gpcope.store_id 
order by
   gpcope.store_id,
   gpcope.general_parameter_id