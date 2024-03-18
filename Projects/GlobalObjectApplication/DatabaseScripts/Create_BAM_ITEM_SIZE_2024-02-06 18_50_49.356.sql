
    create table `BAM_ITEM_SIZE` (
       `ID` integer not null auto_increment,
        `ITEM_ID` integer,
        `SIZE_ID` integer,
        primary key (`ID`)
    ) engine=InnoDB;

    alter table `BAM_ITEM_SIZE`
        add constraint `BAM_ITEM_SIZE_ITEM_ID_FK`
        foreign key (`ITEM_ID`)
        references `BAM_ITEM` (`ID`)
        on delete restrict,
        add constraint `BAM_ITEM_SIZE_SIZE_ID_FK`
        foreign key (`SIZE_ID`)
        references `BAM_SIZE` (`ID`)
        on delete restrict;