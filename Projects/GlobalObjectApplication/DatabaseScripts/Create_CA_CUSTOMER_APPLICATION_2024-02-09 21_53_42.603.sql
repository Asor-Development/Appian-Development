
    create table `CA_CUSTOMER_APPLICATION` (
       `ID` integer not null auto_increment,
        `NAME` varchar(255),
        `ESG_SCORE` integer,
        `HAS_CORRECT_DOCUMENTS` bit,
        `MODIFIED_ON` datetime(6),
        primary key (`ID`)
    ) engine=InnoDB;
