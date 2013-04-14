

########  初始化表
insert into zdata.zdata_table
select 0,TABLE_NAME,TABLE_NAME,TABLE_COMMENT from information_schema.TABLES where TABLE_SCHEMA in
(select name from zdata.zdata_server)
and TABLE_NAME not in(select name from zdata.zdata_table);




insert into zdata.zdata_column
SELECT 
0 zid,
a.TABLE_SCHEMA server_name,
a.TABLE_NAME table_name,
a.column_name column_name,
(case a.IS_Nullable when 'YES' then 400001001 else 400001002 end)  did_null_able,
(select b.code from zsrnpr_define b where rtrim(b.name)=rtrim(a.Data_type)) did_column_type,
ifnull(a.CHARACTER_MAXIMUM_LENGTH,0) length_max,
ifnull(a.NUMERIC_SCALE,0) length_scale,
a.COLUMN_COMMENT note,
a.ORDINAL_POSITION orderid

FROM information_schema.COLUMNS a
where a.TABLE_SCHEMA in
(select name from zdata.zdata_server)










