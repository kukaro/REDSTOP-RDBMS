use mydb;
create table if not exists rs_user(
    username varchar(30),
    password varchar(30) not null
);

alter table rs_user add constraint pk_rsuser_username primary key (username);

create table if not exists rs_project(
    id integer not null auto_increment,
    owner varchar(30) not null,
    project_name varchar(100) not null,
    constraint pk_rsproject_id primary key (id)
);

-- alter table rs_project add constraint pk_rsproject_id primary key (id);
alter table rs_project add constraint fk_rsprojectowner_rsuserusername foreign key rs_project(owner) references rs_user(username) on delete cascade;

create table if not exists rs_demo_urls(
    project_id integer not null,
    url varchar(255) not null,
    method varchar(10) not null
);

alter table rs_demo_urls add constraint pk_rsdemourls_url_method primary key (url,method);
alter table rs_demo_urls add constraint fk_rsdemourlsprojectid_rsprojectid foreign key rs_demo_urls(project_id) references rs_project(id) on delete cascade;

create table if not exists rs_kukaro_urls(
    project_id integer not null,
    url varchar(255) not null,
    method varchar(10) not null
);

alter table rs_kukaro_urls add constraint pk_rskukarourls_url_method primary key (url,method);
alter table rs_kukaro_urls add constraint fk_rskukarourlsprojectid_rsprojectid foreign key rs_kukaro_urls(project_id) references rs_project(id) on delete cascade;
