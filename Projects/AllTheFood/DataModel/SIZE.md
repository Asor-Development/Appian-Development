# Size

|    Name          |   DataType    |
| ---------------- | ------------- |
| **id**           | `Integer: PK` |
| **size**         | `String`      |

- Size SQL

        create table `ATF_SIZE` (
        `ID` integer not null auto_increment,
        `SIZE` varchar(255),
        primary key (`ID`)
        ) engine=InnoDB;