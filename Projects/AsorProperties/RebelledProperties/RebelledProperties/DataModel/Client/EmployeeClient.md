# EmployeeClient Table


- empId and clientId are foreign key that together makes up the composit key that is the primary key
- transactionId is a foreign key which is the primary key of the transaction table

| empId    | clientId        | transactionId  |
| -------  | --------------- | -------------- |
| INT      | TEXT            | TEXT           |


## Create SQL

```
CREATE TABLE employeeClient (
    empId INT,
    clientId INT,
    transactionID INT,
    FOREIGN KEY(transactionId) REFERENCES transaction(id) ON DELETE SET NULL,
    PRIMARY KEY(empId, clientId),
    FOREIGN KEY(empId) REFERENCES employee(empId) ON DELETE CASCADE,
    FOREIGN KEY(clientId) REFERENCES client(clientId) ON DELETE CASCADE
);
```