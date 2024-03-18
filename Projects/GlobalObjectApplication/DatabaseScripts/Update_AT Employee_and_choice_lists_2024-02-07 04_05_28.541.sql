
    create table `AT_EMPLOYEE_EVENT_TYPE` (
       `ID` integer not null auto_increment,
        `EVENT_NAME` varchar(255),
        primary key (`ID`)
    ) engine=InnoDB;

    insert into `AT_EMPLOYEE_EVENT_TYPE`(EVENT_NAME)
    values
        ('Created Employee'),
        ('Updated Employee');

    create table `AT_EMPLOYEE_EVENT_HISTORY` (
       `ID` integer not null auto_increment,
        `RECORD_ID` integer,
        `EVENT_TYPE_ID` integer,
        `USER` varchar(255),
        `AUTOMATION_TYPE_ID` integer,
        `TIMESTAMP` datetime(6),
        primary key (`ID`)
    ) engine=InnoDB;

    alter table `AT_EMPLOYEE_EVENT_HISTORY`
        add constraint `AT_EMPLOYEE_EVENT_HISTORY_RECORD_ID_FK`
        foreign key (`RECORD_ID`)
        references `AT_EMPLOYEE` (`ID`)
        on delete restrict,
        add constraint `AT_EMPLOYEE_EVENT_HISTORY_EVENT_TYPE_ID_FK`
        foreign key (`EVENT_TYPE_ID`)
        references `AT_EMPLOYEE_EVENT_TYPE` (`ID`)
        on delete restrict;