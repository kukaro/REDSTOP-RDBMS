use mydb;
create table if not exists rs_user(
    username varchar(30),
    password varchar(30) not null
);

alter table rs_user add constraint pk_rsuser_username primary key (username);

create table if not exists rs_project(
    id integer not null auto_increment,
    is_init boolean not null default false,
    owner varchar(30) not null,
    project_name varchar(100) not null,
    constraint pk_rsproject_id primary key (id)
);

-- alter table rs_project add constraint pk_rsproject_id primary key (id);
alter table rs_project add constraint fk_rsprojectowner_rsuserusername foreign key rs_project(owner) references rs_user(username) on delete cascade;

create table if not exists rs_demo_urls(
    project_id integer not null,
    url varchar(255) not null,
    method varchar(10) not null,
    name varchar(255) not null
);

alter table rs_demo_urls add constraint pk_rsdemourls_url_method primary key (url,method);
alter table rs_demo_urls add constraint fk_rsdemourlsprojectid_rsprojectid foreign key rs_demo_urls(project_id) references rs_project(id) on delete cascade;

create table if not exists rs_kukaro_urls(
    project_id integer not null,
    url varchar(255) not null,
    method varchar(10) not null,
    name varchar(255) not null
);

alter table rs_kukaro_urls add constraint pk_rskukarourls_url_method primary key (url,method);
alter table rs_kukaro_urls add constraint fk_rskukarourlsprojectid_rsprojectid foreign key rs_kukaro_urls(project_id) references rs_project(id) on delete cascade;

create table if not exists rs_2_scenario(
    scenario_name varchar(100) not null default 'default',
    type set ('L','A') not null,
    iterate_period time not null default '00:01:00',
    xml longtext default null
);

alter table rs_2_scenario add constraint pk_rskukaroscenario_scenarioname primary key (scenario_name);

/*
    create table if not exists rs_${project_id}_${scenario_name}_block(
        id varchar(100) not null,
        name varchar(300) not null,
        type set ('group','case','api') not null,
        parentBlockId varchar(100) default null, 
        url varchar(255) default null,
        method varchar(10) default null
    );

    alter table rs_${project_id}_${scenario_name}_block add constraint pk_rs${projectid}${scenarioname}_id primary key (id);
    alter table rs_${project_id}_${scenario_name}_block add constraint fk_rs${projectid}${scenarioname}urlmehod_rs${owner}urlsurlmethond foreign key rs_${project_id}_${scenario_name}_block(url,method) references rs_${owner}urls(url,method);
*/