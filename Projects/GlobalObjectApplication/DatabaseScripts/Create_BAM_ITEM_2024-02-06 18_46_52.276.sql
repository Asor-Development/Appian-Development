
    create table `BAM_ITEM` (
       `ID` integer not null auto_increment,
        `NAME` varchar(255),
        `PRICE` double precision,
        `DESCRIPTION` varchar(4000),
        `IMAGE` integer,
        `CATEGORY_ID` integer,
        primary key (`ID`)
    ) engine=InnoDB;

    alter table `BAM_ITEM`
        add constraint `BAM_ITEM_CATEGORY_ID_FK`
        foreign key (`CATEGORY_ID`)
        references `BAM_CATEGORY` (`ID`)
        on delete restrict;