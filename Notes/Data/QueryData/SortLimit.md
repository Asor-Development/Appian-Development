# Sorting and Limiting
 **Sorting and limiting the data in your queries will allow you to organize your query results in a powerful way to present usable data to users without requiring them to interact with a grid or chart to make their own sorting choices. You can also limit, how many records are returned**


## Sorting
### a!sortInfo()
- `a!pagingInfo(sort:{a!sortInfo()})`
- if you want to create mutilple sorts you will have to created use multiple `a!sortInfo()` functions
- **field:** field to sort by, you can use the field alias
    - if using related record data you will and the realted record as the record type then select the field
- **asending:** default value is false if sort does have asending order value will be true

### Sort record data using the query editor

1. In the query editor select the sort and limit button
2. Select Guided and select the record type field you want to sort by
3. Choose sort order
    - if you select decending in the query editor the asending parameter will not be present
4. Choose Data Limit
    - the preview grid will always show this number of records per page but the data limit value will correspond to the batch size parameter in the generated query
5. Click Test query, generate query and save changess

#### Sort on multiple fields in a selection query
**You can add additional sorts by selecting the plus icon next to the first sort condition, sorting will apply in oerder added**

### Sorting Aggregation query
**Aggregation queries are created directly in the expression editor**

## Limit record data using the query editor

**To ensure the last record is returned, add a sort parameter using a!sortInfo() and field, add the field**

![**If you would like to filter, sort, or limit one-to-many related record data, you need to use `a!relatedRecordData()` after your query is generated**](./Querying.md)