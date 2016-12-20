select ecad_store_id_pk.set_store_id('UNILEVER')  from dual;
update ECAD_PRICE_TP SET NAME='Vila Nova -  A vista' where source_name='DFL-2' and Store_id='UNILEVER';
update ECAD_PRICE_TP SET NAME='Roge - A vista' where source_name='DFL-3' and Store_id='UNILEVER';
update ECAD_PRICE_TP SET NAME='DecMinas - A vista' where source_name='DFL-6' and Store_id='UNILEVER';
commit;