-- begin TESTPROJECT_CUSTOMER
create table TESTPROJECT_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(100) not null,
    EMAIL varchar(50) not null,
    --
    primary key (ID)
)^
create table TESTPROJECT_NOMENCLATURE (
    ID uuid not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    NAME varchar(255) not null,
    primary key (ID)
)^
-- end TESTPROJECT_CUSTOMER
-- begin TESTPROJECT_ORDER
create table TESTPROJECT_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CUSTOMER_ID varchar(36),
    NOMENCLATURE_ID uuid,
    DATE_ date not null,
    AMOUNT decimal(19, 2),
    --
    primary key (ID)
)^
-- end TESTPROJECT_ORDER
