# Employee Table


## Table Info
- has 11 columns
- 1 Foreign Keys
    - `departmentId` will point to a `departmentId` in the departments table
- [x] need 20 mangers one for each location
    - [x] match managers to a location
- [x] need 10 supervisors, 1 for every 2 location
    - [x] match each supervisor to two location


## TABLE COLUMNS
- [x] `id`
    - Number (Integer)
    - PK, Auto Increment
- [x] `empId`
    - TEXT
- [x] `firstName`
    - TEXT
- [x] `lastName`
    - TEXT
- [x] `hireDate`
    - DATE
- [x] `jobTitle`
    - TEXT
- [x] `phoneNumber`
    - TEXT
- [x] `gender`
    - TEXT
- [x] `birthDate`
    - DATE
- [x] `salary`
    - Number (Integer)
- [x] `departmentId`
    - Number (Integer)
    - FK that references id field of the departments table 

---


Mortgage brokers help individuals negotiate the best deal when getting a mortgage loan.

---

- Create Table SQL
    
        create table `RPI_EMPLOYEE` (
            `ID` integer not null auto_increment,
            `EMP_ID` varchar(255),
            `FIRST_NAME` varchar(255),
            `LAST_NAME` varchar(255),
            `HIRE_DATE` date,
            `JOB_TITLE` varchar(255),
            `PHONE_NUMBER` varchar(255),
            `GENDER` varchar(255),
            `BIRTH_DATE` date,
            `SALARY` integer,
            `DEPARTMENT_ID` integer,
            primary key (`ID`)
        ) engine=InnoDB;

        alter table `RPI_EMPLOYEE`
            add constraint `RPI_EMPLOYEE_DEPARTMENT_ID_FK`
            foreign key (`DEPARTMENT_ID`)
            references `RPI_DEPARTMENT` (`ID`)
            on delete restrict;


**Find employee table data [here](./EmployeeData.md)**