use mydb;
delete from rs_user;
insert into rs_user(username,password) values('demo', 1234);
insert into rs_user(username,password) values('kukaro', 1234);

delete from rs_project;
insert into rs_project(owner,project_name) values('demo', 'demo project');
insert into rs_project(owner,project_name) values('kukaro', 'kukaro project');

delete from rs_demo_urls;
insert into rs_demo_urls(project_id,url,method) values('1', 'http://localhost:4000/api/json-test/single-json','get');
insert into rs_demo_urls(project_id,url,method) values('1', 'http://localhost:4000/api/json-test/multi-json', 'get');
insert into rs_demo_urls(project_id,url,method) values('1', 'http://localhost:4000/', 'get');

delete from rs_kukaro_urls;
insert into rs_kukaro_urls(project_id,url,method) values('2', 'http://localhost:4000/api/json-test/single-json', 'get');
insert into rs_kukaro_urls(project_id,url,method) values('2', 'http://localhost:4000/api/json-test/multi-json', 'get');
insert into rs_kukaro_urls(project_id,url,method) values('2', 'http://localhost:4000/', 'get');
insert into rs_kukaro_urls(project_id,url,method) values('2', 'http://localhost:4000/web/log-in', 'get');
insert into rs_kukaro_urls(project_id,url,method) values('2', 'http://localhost:4000/web/log-out', 'get');
insert into rs_kukaro_urls(project_id,url,method) values('2', 'http://localhost:4000/web/sign-up', 'get');