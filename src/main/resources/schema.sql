drop table if exists foreign_currency_rates;

drop table if exists hibernate_sequence;

drop table if exists menu_text;

drop table if exists ussd_session;

create table foreign_currency_rates (
                                        id bigint not null,
                                        base_currency varchar(255),
                                        zar_to_kws decimal(19,2),
                                        zar_to_mwk decimal(19,2),
                                        primary key (id)
) engine=InnoDB;

create table hibernate_sequence (
    next_val bigint
) engine=InnoDB;

insert into hibernate_sequence values ( 1 );

create table menu_text (
                           id bigint not null,
                           language varchar(255),
                           menu_number integer,
                           text varchar(255),
                           primary key (id)
) engine=InnoDB;

create table ussd_session (
                              id bigint not null,
                              ammount_to_send decimal(19,2),
                              msisdn varchar(255),
                              selected_country varchar(255),
                              session_id varchar(255),
                              session_start_time datetime(6),
                              stage varchar(255),
                              primary key (id)
) engine=InnoDB;