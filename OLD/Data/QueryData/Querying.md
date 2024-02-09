# Query Records

## a!queryRecordType()
**Looks up and returns data from your record type object** 
- can use this function to return:
    - a list of values for a single record field 
    - a list of records with a subset of the fields
    - aggregate data
    - a single row of data
- data will be returned in the form of a map and you will have to use . data to index into the parameter

## a!relatedRecordData()
**Use to filter, sort, or limit the related data records**
- If you're querying a record type that has a one-to-many relationship, you can use the relatedRecordData parameter in your query to filter the data returned from that one-to-many relationship
-  You can sort and limit one-to-many related record fields in the expression editor, after your query is generated
- Parameter include relationship, limit, sort, and filters.
- `a!queryRecordType(relatedRecordData: a!relatedRecordData(relationship:, filter:))`

1. Inside `a!queryRecordType()` Add `relatedRecordData:` parameter before the `pagingInfo:` parameter
2. Add `a!relatedRecordData()` as the value for `relatedRecordData:`
    - can use realtionship, limit, sort and filter parameters
3. For the `relationship:` parameter add theRecordType.relationships.theRelationship
4. For `filter:` parameter add `a!queryFilter()`

**Tip** Sometimes querys returns maps or datasubsets, you can add `.data` to the end of the query to get back just the requested data