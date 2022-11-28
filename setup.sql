create database db_logs;

use db_logs;

create table logs
(
    id        int auto_increment,
    level     varchar(255)  null,
    message   varchar(2000) null,
    timestamp timestamp     null,
    uid       varchar(255)  null,
    constraint logs_pk
        primary key (id)
);

create table services
(
    id           int auto_increment,
    service      varchar(255) null,
    display_name varchar(255) null,
    constraint services_pk
        primary key (id)
);

insert into services (service, display_name)
values ('text-similarity', 'Text Similarity');