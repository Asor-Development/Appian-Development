# Category  
|    Name          |   DataType    |
| ---------------- | ------------- |
|  **id**          | `Integer: PK` |
| **categoryName** | `String`      |


- Category SQL

        create table `ATF_CATEGORY` (
        `ID` integer not null auto_increment,
        `NAME` varchar(255),
        primary key (`ID`)
        ) engine=InnoDB;