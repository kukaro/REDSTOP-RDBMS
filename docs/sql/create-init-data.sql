use mydb;
delete from rs_user;
insert into rs_user(username,password) values('demo',1234);

delete from rs_project;
insert into rs_project(owner,project_name) values('demo','demo project');

delete from rs_demo1_urls;
insert into rs_demo1_urls(project_id,url,method) values('1', 'http://localhost:3000/api/json-test/single-json','get');
insert into rs_demo1_urls(project_id,url,method) values('1', 'http://localhost:3000/api/json-test/multi-json', 'get');
insert into rs_demo1_urls(project_id,url,method) values('1', 'http://localhost:3000/', 'get');