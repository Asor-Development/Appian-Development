
    alter table `BAM_ITEM` 
       add column `SIZE_ID` integer;

    alter table `BAM_ITEM`
        add constraint `BAM_ITEM_SIZE_ID_FK`
        foreign key (`SIZE_ID`)
        references `BAM_SIZE` (`ID`)
        on delete restrict;