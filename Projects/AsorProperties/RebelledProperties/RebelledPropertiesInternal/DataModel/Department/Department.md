# Department Table


## TABLE COLUMNS
- [x] id
    - Number(INTEGER)
- [x]departmentId
    - Number(INTEGER)
- [x]departmentName
    - TEXT

## Department Data
- [x] Human Resources
- [x] Finance               
- [x] Accounting            
- [x] Legal                 
- [x] Research And Analysis 
- [x] Marketing
- [x] Employee Management
- [x] Office Management             
- [x] Property management   
- [x] Sales                 

- Create Table SQL

        create table `RPI_DEPARTMENT` (
        `ID` integer not null auto_increment,
            `DEPARTMENT_NAME` varchar(255),
            primary key (`ID`)
        ) engine=InnoDB;

---

Sales department: This department is responsible for selling properties, including marketing listings, showing properties to potential buyers, negotiating offers, and facilitating the closing process.
Property management department: This department manages rental properties on behalf of owners, including marketing vacancies, screening tenants, collecting rent, handling maintenance requests, and enforcing lease agreements.
Marketing department: This department creates and executes marketing strategies to promote the company and its services, including advertising, social media, email marketing, and content creation.
Research and analysis department: This department conducts market research, analyzes trends, and provides insights into the real estate market to help the company make informed business decisions.
Legal department: This department provides legal advice and services related to real estate transactions, including drafting contracts, reviewing documents, and handling disputes.
Finance and accounting department: This department manages the company's financial operations, including budgeting, accounting, financial reporting, and tax compliance.
Human resources department: This department manages the company's human resources functions, including recruiting, hiring, training, and managing employees.
Overall, these departments work together to provide a full range of real estate services to clients, from buying and selling properties to managing rental properties and providing market insights.


---

