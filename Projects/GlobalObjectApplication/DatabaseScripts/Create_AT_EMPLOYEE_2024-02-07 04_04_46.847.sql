
    create table `AT_EMPLOYEE` (
       `ID` integer not null auto_increment,
        `FIRST_NAME` varchar(255),
        `LAST_NAME` varchar(255),
        `START_DATE` date,
        `TITLE` varchar(255),
        `DEPARTMENT` varchar(255),
        `PHONE_NUMBER` varchar(255),
        primary key (`ID`)
    ) engine=InnoDB;
