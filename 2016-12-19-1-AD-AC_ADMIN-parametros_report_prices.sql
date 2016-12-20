begin
  ecad_gp_ins_upd_all_stores(
    p_gp_id => 'REPORT_PRICES_ALERT_10_ENABLE',
    p_gp_value => 'false',
    p_gp_description => 'Relatorio de hierarquia de preços - Habilitado',
    p_gp_group_id => 16,
    p_gp_value_type => 'L',
    p_gp_value_list => 'false#Desabilitado|true#Habilitado',
    p_gp_update_if_exists => true
  );
  
  ecad_gp_ins_upd_all_stores(
    p_gp_id => 'REPORT_PRICES_ALERT_20_TO',
    p_gp_value => ' ',
    p_gp_description => 'Relatorio de hierarquia de preços - Lista "to:" de destinatarios separada por virgula',
    p_gp_group_id => 16,
    p_gp_value_type => 'S',
    p_gp_value_list => null,
    p_gp_update_if_exists => true
  );
  
end;
/
update ecad_general_parameter
set value = 'true'
where general_parameter_id = 'REPORT_PRICES_ALERT_10_ENABLE'
and store_id = 'UNILEVER';

update ecad_general_parameter
set value = 'lucas.melo@infracommerce.com,felipe.saab@infracommerce.com.br'
where general_parameter_id = 'REPORT_PRICES_ALERT_20_TO'
and store_id = 'UNILEVER';
commit;