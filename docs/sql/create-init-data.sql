/*
target server location = 52.79.221.114
*/ 
use mydb;
delete from rs_user;
insert into rs_user(username,password) values('demo', 1234);
insert into rs_user(username,password) values('kukaro', 1234);

delete from rs_project;
insert into rs_project(owner,project_name) values('demo', 'demo project');
insert into rs_project(owner,project_name) values('kukaro', 'kukaro project');

delete from rs_demo_urls;
insert into rs_demo_urls(project_id,url,method,name) values('1', 'http://13.209.126.84:4000/api/json-test/single-json','get','SingleJson');
insert into rs_demo_urls(project_id,url,method,name) values('1', 'http://13.209.126.84:4000/api/json-test/multi-json', 'get','MultiJson');
insert into rs_demo_urls(project_id,url,method,name) values('1', 'http://13.209.126.84:4000/', 'get',"WebRoot");

delete from rs_kukaro_urls;
insert into rs_kukaro_urls(project_id,url,method,name) values('2', 'http://13.209.126.84:4000/api/json-test/single-json', 'get','SingleJson');
insert into rs_kukaro_urls(project_id,url,method,name) values('2', 'http://13.209.126.84:4000/api/json-test/multi-json', 'get','MultiJson');
insert into rs_kukaro_urls(project_id,url,method,name) values('2', 'http://13.209.126.84:4000/', 'get','WebRoot');
insert into rs_kukaro_urls(project_id,url,method,name) values('2', 'http://13.209.126.84:4000/web/log-in', 'get','WebLogin');
insert into rs_kukaro_urls(project_id,url,method,name) values('2', 'http://13.209.126.84:4000/web/log-out', 'get','WebLogout');
insert into rs_kukaro_urls(project_id,url,method,name) values('2', 'http://13.209.126.84:4000/web/sign-up', 'get','WebSignUp');

delete from rs_2_scenario;
insert into rs_2_scenario(type,iterate_period) values('A','00:00:10');