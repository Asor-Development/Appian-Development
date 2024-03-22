# Transaction Table






| transactionId | amount         | date          |
| ------------  | -------------- | ------------- |
| INT           | DECIMAL        | DATE          |


## Create SQL

```
CREATE TABLE transaction (
    id INT PRIMARY KEY,
    amount INT,
    transactionDate DATE
);
```


----
| transactionId | clientId        | amount         | date          | typeId          | address      | officeLocationId  |
| ------------  | --------------- | -------------- | ------------- | --------------- | ------------ | ----------------- |
| INT           | TEXT            | DECIMAL        | DATE          | TEXT            | TEXT         | INT               |