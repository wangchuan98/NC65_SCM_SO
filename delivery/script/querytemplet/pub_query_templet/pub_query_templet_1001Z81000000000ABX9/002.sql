insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('0001Z81000000008H2AM','仓库',5,27,1,null,null,'this.csendstordocid','发货仓库',null,'N','Y','N','Y','N','N','N','N','N','Y','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0000994',2,null,null,'2015-06-06 10:34:27','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXA','物流组织',5,0,1,null,null,'pk_org','物流组织',null,'N','Y','N','Y','N','N','N','N','Y','N','N','N','N','Y','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040035',2,null,null,'2011-09-14 10:27:02','N','#mainorg#')
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXB','-99',3,1,1,null,null,'dsenddate','发货日期',null,'N','Y','N','Y','N','N','N','N','Y','N','N','N','N','Y','Y',null,'Y',9999,null,'between@=@','介于@等于@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0001011',2,'so_delivery_b','发货单子表','2011-09-14 14:48:27','N','#month(0)#,#day(0)#')
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXC','-99',3,2,1,null,null,'dbilldate','单据日期',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','Y',null,'Y',9999,null,'between@=@','介于@等于@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0000799',2,null,null,'2011-09-14 14:48:27','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXD','影响因素交 易类型',5,3,1,null,null,'ctrantypeid','发货类型',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040034',2,null,null,'2011-05-30 14:29:26','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXE','销售组织',5,4,1,null,null,'csaleorgid','销售组织',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0004128',2,'so_delivery_b','发货单子表','2011-08-31 09:38:49','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXF','客户档案',5,5,0,null,null,'this.cordercustid.code','订单客户.客户编码',null,'N','N','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=@left like@','等于@左包含@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040044',0,null,null,'2011-05-18 09:37:18','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXG','-99',9,6,1,null,null,'this.cordercustid.name','订单客户.客户名称',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=@left like@','等于@左包含@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040037',2,null,null,'2011-05-18 09:37:18','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXH','客户基本分类',5,7,1,null,null,'this.cordercustid.pk_custclass','订单客户.客户基本分类',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040038',2,null,null,'2011-05-18 09:37:18','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXI','客户销售分类',5,8,1,null,null,'this.cordercustid.sales.pk_custsaleclass','订单客户.客户销售信息.客户销售分类',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'N',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040045',2,null,null,'2011-10-25 14:56:32','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXJ','地区分类',5,9,1,null,null,'this.cordercustid.pk_areacl','订单客户.地区分类',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040040',2,null,null,'2011-05-18 09:37:18','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXK','客户档案',5,10,0,null,null,'this.creceivecustid.code','收货客户.客户编码',null,'N','N','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=@left like@','等于@左包含@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040041',0,null,null,'2011-04-26 09:55:02','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXL','-99',9,11,1,null,null,'this.creceivecustid.name','收货客户.客户名称',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=@left like@','等于@左包含@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040039',2,null,null,'2011-04-26 09:55:02','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXM','地区分类',5,12,1,null,null,'creceiveareaid','收货地区',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0002245',2,'so_delivery_b','发货单子表','2011-08-31 09:38:49','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXN','地点档案',5,13,1,null,null,'creceiveadddocid','收货地点',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040047',2,'so_delivery_b','发货单子表','2011-08-31 09:38:50','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXO','运输方式',5,14,1,null,0,'ctransporttypeid','运输方式',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',null,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0003994',2,null,null,'2011-04-26 09:55:02','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXP','运输路线',5,15,1,null,null,'ctransportrouteid','运输路线',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040042',2,null,null,'2011-10-14 12:43:10','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXQ','承运商定义',5,16,1,null,null,'ctranscustid','承运商',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0002070',2,'so_delivery_b','发货单子表','2011-08-31 09:38:50','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXR','库存组织',5,17,1,null,null,'csendstockorgid','发货库存组织',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0001006',2,'so_delivery_b','发货单子表','2011-08-31 09:38:50','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXS','部门',5,18,1,null,null,'csenddeptid','发货部门',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040046',2,null,null,'2012-03-02 14:20:46','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXT','人员',5,19,1,null,null,'csendemployeeid','发货计划员',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040033',2,null,null,'2012-03-02 14:20:46','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXU','物料',5,20,0,null,null,'this.cmaterialvid.code','物料编码',null,'N','N','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=@left like@','等于@左包含@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0002911',0,null,null,'2011-08-19 15:46:00','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXV','-99',9,21,1,null,null,'this.cmaterialvid.name','物料名称',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=@left like@','等于@左包含@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0002908',2,null,null,'2011-08-19 15:46:00','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXW','物料基本分类',5,22,1,null,null,'this.cmaterialvid.pk_marbasclass','物料分类',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040031',2,null,null,'2011-08-19 15:46:00','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXX','物料销售分类',5,23,1,null,null,'this.cmaterialvid.materialsale.pk_marsaleclass','物料销售分类',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'N',9999,null,'=','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040043',2,null,null,'2011-10-25 14:56:32','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXY','-99',4,24,1,null,null,'boutendflag','出库关闭',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=@','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040032',2,'so_delivery_b','发货单子表','2011-08-31 09:38:50','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000ABXZ','-99',4,25,1,null,null,'btransendflag','运输关闭',null,'N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','Y',null,'Y',9999,null,'=@','等于@',0,'@@@@','1001Z81000000000ABX9',null,'1400604040036',2,'so_delivery_b','发货单子表','2011-08-31 09:38:50','N',null)
go

insert into pub_query_condition(id,consult_code,data_type,disp_sequence,disp_type,disp_value,dr,field_code,field_name,guideline,if_attrrefused,if_autocheck,if_datapower,if_default,if_desc,if_group,if_immobility,if_multicorpref,if_must,if_notmdcondition,if_order,if_subincluded,if_sum,if_sysfuncrefused,if_used,instrumentsql,iscondition,limits,max_length,opera_code,opera_name,order_sequence,pk_corp,pk_templet,prerestrict,resid,return_type,table_code,table_name,ts,userdefflag,value) values('1001Z81000000000O8OR','-99',0,3,1,null,null,'vbillcode','单据号',null,'N','Y','N','Y','N','N','N','N','N','Y','N','N','N','N','Y',null,'Y',9999,null,'=@left like@','等于@左包含@',0,'@@@@','1001Z81000000000ABX9',null,'UC000-0000814',2,null,null,'2011-10-25 17:43:27','N',null)
go

