create database taskmdb with owner taskm;

create sequence USERS_SEQ start with 100 increment by 1;

create table USERS (
  ID bigint constraint USERS_PK primary key,
  NAME varchar(64) constraint USERS_NN1 not null,
  PASSWORD varchar(64) constraint USERS_NN2 not null
);

create table USERS_GROUPS (
  USER_NAME varchar(64) constraint USERS_GROUPS_NN1 not null,
  GROUP_NAME varchar(64) constraint USERS_GROUPS_NN2 not null,
  primary key (USER_NAME, GROUP_NAME)
);

insert into USERS (ID, NAME, PASSWORD) values (1, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');
insert into USERS (ID, NAME, PASSWORD) values (2, 'user', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

insert into USERS_GROUPS (USER_NAME, GROUP_NAME) values ('admin', 'admin');
insert into USERS_GROUPS (USER_NAME, GROUP_NAME) values ('user', 'user');