
    create table `RP_PROPERTY_TYPE` (
       `ID` integer not null auto_increment,
        `TYPE` varchar(255),
        `DESCRIPTION` varchar(4000),
        `STYLE_ID` integer,
        primary key (`ID`)
    ) engine=InnoDB;

    alter table `RP_PROPERTY_TYPE`
        add constraint `RP_PROPERTY_TYPE_STYLE_ID_FK`
        foreign key (`STYLE_ID`)
        references `RP_PROPERTY_STYLE` (`ID`)
        on delete restrict;