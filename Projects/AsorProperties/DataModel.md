# Data Design and structure

1. Outline Data Structures
    - data structures should not be finalized until reporting requirements are finalized, because report content design can impact the data structure
2. Identify Data Sources
3. Verify access to data
    - locate all the data sources and verify or request access, do this before you start creating the application




## 1. Data Structure Outline
### Property Data Structure
| Field Name                              | Value Format  |
| --------------------------------------- | ------------- |
| **Property ID:** propID(primary Key)    | INTEGER       |
| **Property Address:** propaddress       | TEXT          |
| **Property Type:** propType             | TEXT          |
| **Condition:** propCondition            | TEXT          |
| **Added By:** propAddedBy               | TEXT          |
| **Availability Status:** propStatus     | TEXT          |
| **New Property Date:** propAddedDate    | DATE          |
| **Last Service Date:** propLastServDate | DATE          |
| **Next Service Date:**                  | DATE          |
| **Image:**                              | Test2         |
| **Size:**                               | INTEGER       |
| **Year Built:**                         | INTEGER       |
| **Number of Beds:**                     | INTEGER       |
| **Number of Baths:**                    | INTEGER       |
| **Price:**                              | INTEGER       |
| **Last Modified By:**                   | TEXT          |
| **Last Modified Date:**                 | TIMEDATE      |
| **Comments:**                           | Text          |

#### Primary Key
- can be used to query related data from another table
**Property and Maintenance data will be linked through the unique property ID this ID will be automatically generated each time a new property is added, this is also the primary key**

- Record Types can be used to establish relationships between tables in the database in order to access data across them

### Maintenance Data Structure

| Field Name                | Value Format  |
| ------------------------- | ------------- |
| Maintenace Request Number | Test1         |
| Maintenance Request Date  | Test2         |
| Requester                 | Test2         |
| Issue                     | Test1         |
| Repair Associate          | Test2         |
| Repair Date               | Test2         |
| Repair Cost               | Test2         |
| Maintenance ID            | INTEGER       |
| Property ID               | Test2         |



##### Records