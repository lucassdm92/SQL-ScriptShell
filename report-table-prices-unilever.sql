select 
 p.sku_id as "SKU_ID", 
  w.warehouse_name as "DISTRIBUIDOR",
  tp.source_name as "TABELA_PRECO", 
 ( p.value) as "PRECO", 
  
  tp2.source_name as "TABELA_PRECO_2", 
  p2.value as "PRECO_2",

 (tp.name ||' '||tp.source_name ||  ' esta maior do que o ' || tp2.name || ' '||tp2.source_name ) as "ALARME"
from ecad_price p 
  inner join ecad_price_tp tp on (p.store_id=tp.store_id and p.price_tp_id=tp.price_tp_id) 
  inner join ecad_price p2 on (p2.store_id=tp.store_id and p2.sku_id = p.sku_id) 
  inner join ecad_price_tp tp2 on (p2.store_id=tp2.store_id and p2.price_tp_id=tp2.price_tp_id) 
  inner join ecad_warehouse w on (w.store_id=p.store_id and w.warehouse_id=substr(tp.source_name, instr(tp.source_name, '-', -1)+1)) 
where 
  p.store_id = 'UNILEVER'
  and tp.source_name like 'DFL-%'  
  and tp2.source_name in (
    'CRL-7-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRL-14-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRL-21-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRL-28-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRD-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1)
  ) 
  and p.SKU_id !='PRD' 
  and p.value > p2.value
  and substr(tp.source_name, instr(tp.source_name, '-', -1)+1) = substr(tp2.source_name, instr(tp2.source_name, '-', -1)+1)

  UNION ALL
  
  select 
  p.sku_id as "SKU_ID", 
  w.warehouse_name as "DISTRIBUIDOR",
  tp.source_name as "TABELA_PRECO", 
  p.value as "PRECO", 
  tp2.source_name as "TABELA_PRECO_2", 
  p2.value as "PRECO_2",
  (tp.name ||' '||tp.source_name ||  ' esta maior do que o ' || tp2.name || ' '||tp2.source_name ) as "ALARME"
from ecad_price p 
  inner join ecad_price_tp tp on (p.store_id=tp.store_id and p.price_tp_id=tp.price_tp_id) 
  inner join ecad_price p2 on (p2.store_id=tp.store_id and p2.sku_id = p.sku_id) 
  inner join ecad_price_tp tp2 on (p2.store_id=tp2.store_id and p2.price_tp_id=tp2.price_tp_id) 
  inner join ecad_warehouse w on (w.store_id=p.store_id and w.warehouse_id=substr(tp.source_name, instr(tp.source_name, '-', -1)+1)) 
where 
  p.store_id = 'UNILEVER'
  and tp.source_name like 'CRL-7-%'  -- preco 1 = DFL
  and tp2.source_name in (
    'CRL-14-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRL-21-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRL-28-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRD-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1)
  ) 
  and p.SKU_id !='PRD' 
  and p.value > p2.value
  and substr(tp.source_name, instr(tp.source_name, '-', -1)+1) = substr(tp2.source_name, instr(tp2.source_name, '-', -1)+1)
  
   UNION ALL
  
  select 
  p.sku_id as "SKU_ID", 
  w.warehouse_name as "DISTRIBUIDOR",
  tp.source_name as "TABELA_PRECO", 
  p.value as "PRECO", 
  tp2.source_name as "TABELA_PRECO_2", 
  p2.value as "PRECO_2",
  (tp.name ||' '||tp.source_name ||  ' esta maior do que o ' || tp2.name || ' '||tp2.source_name ) as "ALARME"
from ecad_price p 
  inner join ecad_price_tp tp on (p.store_id=tp.store_id and p.price_tp_id=tp.price_tp_id) 
  inner join ecad_price p2 on (p2.store_id=tp.store_id and p2.sku_id = p.sku_id) 
  inner join ecad_price_tp tp2 on (p2.store_id=tp2.store_id and p2.price_tp_id=tp2.price_tp_id) 
  inner join ecad_warehouse w on (w.store_id=p.store_id and w.warehouse_id=substr(tp.source_name, instr(tp.source_name, '-', -1)+1)) 
where 
  p.store_id = 'UNILEVER'
  and tp.source_name like 'CRL-14-%'  -- preco 1 = DFL
  and tp2.source_name in (
    'CRL-21-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRL-28-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRD-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1)
  ) 
  and p.SKU_id !='PRD' 
  and p.value > p2.value
  and substr(tp.source_name, instr(tp.source_name, '-', -1)+1) = substr(tp2.source_name, instr(tp2.source_name, '-', -1)+1)
  
  
  UNION ALL
  
select 
  p.sku_id as "SKU_ID", 
  w.warehouse_name as "DISTRIBUIDOR",
  tp.source_name as "TABELA_PRECO", 
  p.value as "PRECO", 
  tp2.source_name as "TABELA_PRECO_2", 
  p2.value as "PRECO_2",
 (tp.name ||' '||tp.source_name ||  ' esta maior do que o ' || tp2.name || ' '||tp2.source_name ) as "ALARME"
from ecad_price p 
  inner join ecad_price_tp tp on (p.store_id=tp.store_id and p.price_tp_id=tp.price_tp_id) 
  inner join ecad_price p2 on (p2.store_id=tp.store_id and p2.sku_id = p.sku_id) 
  inner join ecad_price_tp tp2 on (p2.store_id=tp2.store_id and p2.price_tp_id=tp2.price_tp_id) 
  inner join ecad_warehouse w on (w.store_id=p.store_id and w.warehouse_id=substr(tp.source_name, instr(tp.source_name, '-', -1)+1)) 
where 
  p.store_id = 'UNILEVER'
  and tp.source_name like 'CRL-21-%'  -- preco 1 = DFL
  and tp2.source_name in (
    'CRL-28-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1),
    'CRD-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1)
  )
  and p.SKU_id !='PRD' 
  and p.value > p2.value
  and substr(tp.source_name, instr(tp.source_name, '-', -1)+1) = substr(tp2.source_name, instr(tp2.source_name, '-', -1)+1)
  
  UNION ALL
  
select 
  p.sku_id as "SKU_ID", 
  w.warehouse_name as "DISTRIBUIDOR",
  tp.source_name as "TABELA_PRECO", 
  p.value as "PRECO", 
  tp2.source_name as "TABELA_PRECO_2", 
  p2.value as "PRECO_2",
  (tp.name ||' '||tp.source_name ||  ' esta maior do que o ' || tp2.name || ' '||tp2.source_name ) as "ALARME"
from ecad_price p 
  inner join ecad_price_tp tp on (p.store_id=tp.store_id and p.price_tp_id=tp.price_tp_id) 
  inner join ecad_price p2 on (p2.store_id=tp.store_id and p2.sku_id = p.sku_id) 
  inner join ecad_price_tp tp2 on (p2.store_id=tp2.store_id and p2.price_tp_id=tp2.price_tp_id) 
  inner join ecad_warehouse w on (w.store_id=p.store_id and w.warehouse_id=substr(tp.source_name, instr(tp.source_name, '-', -1)+1)) 
where 
  p.store_id = 'UNILEVER'
  and tp.source_name like 'CRL-28-%'  -- preco 1 = DFL
  and tp2.source_name in (
    'CRD-'||substr(tp.source_name, instr(tp.source_name, '-', -1)+1)
  ) 
  and p.SKU_id !='PRD' 
  and p.value > p2.value
  and substr(tp.source_name, instr(tp.source_name, '-', -1)+1) = substr(tp2.source_name, instr(tp2.source_name, '-', -1)+1)
