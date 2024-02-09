# Record Type Relationships

**Enable you to connect record types in Appian and then seamlessly access, reference and take action on this data throughout your applications**

- you can include data from different source types

___________________________
## One to many 
- one to many has been added as a new record type relationship
- new data preview added to ensure you are setting up the proper relationship type
- new relationship suggestions
    - when you add a relationship to a record type the inverse relationship will be suggested for the related record type and you can just click to add the new relationships
- `a!relatedRecordData()` returns data from related records from a one to many relationship
    - filters, sorts, and limits related record data in a grid or a query


### Aggregate Related Record Fields Template

- when you need to aggregate data from a one to many relationship
- calculates aggregations such as the sum of the total number of cleaned rooms associated with each housekeeper
- you can use the custom field in grids, charts, and queries