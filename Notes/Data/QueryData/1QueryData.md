# Querying Data
**To query data you will need to create expressions that allows you to access your data**
- when querying data you might want to query the database once then store it in a local variable and reference that variable when needed, if not then you would be querying the data every time you need it(performace)

## Query
**An expression that allows you to access your data in order to display it in different parts of your application.**
**You create queries using expressions**

- allow you to return data based on specific criteria
- A query can't write data
- While you can query a data store entity, the better option is to query your record type
- You might use that returned data to
    - Populate a Form
    - Populate Choices
    - Represent a KPI
- You can query two types of objects:
    - **RecordType:** using `a!queryRecordType()` 
        - allows you to query data from a database, as well as Salesforce and other web services when the record type has data sync enabled
        - query record types when you want to view record data, generated data can be presented in Interfaces, Reports, and Record Views
    - **Data Store Entity:** using `a!queryEntity()`
        - This allows you to query data directly from a database.
______________________________

## Query Methods
**There are two methods of returning data, selection and aggregation. Explanation in context of using a!queryRecordType()**

![Selection Queries](./SelectionQuery.md)
![Aggregation Queries](./AggregationQuery.md)
