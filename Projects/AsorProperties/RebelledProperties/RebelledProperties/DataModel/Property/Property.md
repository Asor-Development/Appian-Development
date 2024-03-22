##  Property Table
| Field Name                              | Value Format  |
| --------------------------------------- | ------------- |
| **id:** (primary Key)                   | INTEGER       |
| **propId:**                             | INTEGER       |
| **propaddress:**                        | TEXT          |
| **propType:**                           | TEXT          |
| **propCondition:**                      | TEXT          |
| **propAddedBy:**                        | TEXT          |
| **propStatus:**                         | TEXT          |
| **propAddedDate:**                      | DATE          |
| **propLastServDate:**                   | DATE          |
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