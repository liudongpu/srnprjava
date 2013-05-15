
update zweb_fields set level_grid=0 where column_name in('zid','uid');
update zweb_fields set level_add=0,level_edit=0,level_book=0,level_inquire=0 where column_name in('zid');
update zweb_fields set did_field_type=416108108 where column_name in('zid','uid');
update zweb_fields set did_field_type=416108109 where did_field_type=0;