# Client Table

- 7 columns
- one foreign Key column `officeLocationId` that points to the `officeId` in the officeLocation Table

## Columns
- `clientId`
  - INT
  - PK
- `firstName`
  - TEXT
- `lastName`
  - TEXT
- `phoneNumber`
  - TEXT
- `email`
  - TEXT
- `address`
  - TEXT
- `officeLocationId`
  - INT
  - FK

----


## Create SQL

```
CREATE TABLE client (
  clientId INT PRIMARY KEY,
  firstName VARCHAR(40),
  lastName VARCHAR(40),
  phoneNumber VARCHAR(40),
  email VARCHAR(40),
  address VARCHAR(40),
  officeLocationId INT,
  FOREIGN KEY(officeLocationId) REFERENCES officeLocation(officeId) ON DELETE SET NULL
);
```