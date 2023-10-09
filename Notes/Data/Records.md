# Record Type
- the most common way to work with data
- allows you to easily connect to data
    - data can live in a database, process model, Salesforce, or another web service
- with data sync enabled are the best way to work with your data in Appian
  - allows you to connect to your database tables and work with the data how you need it
- allows you to and leverage powerful no-code data modeling capabilities to relate, transform, and extend your data into the insights you need
- extend your data using powerful data modeling capabilities like record type relationships and custom record fields to relate and transform your data
- can secure data using record-level security
- you can seamlessly reference your data throughout your applications using records, powered components, queries etc...
- there are scenarios when you need to use other objects in addition to or instead of a record type
    - when extracting data from a document, you’ll need a custom data type (CDT) to map data extracted from a document
    - if your data lives in a third-party system, you’ll need an integration to access that system before you can work with that data in Appian


**Use Record Types When**
- you want to view, display, and report on data from a database, process model, Salesforce, or other web service
- you want to add, update, or delete data from a database table
- connecting Appian data for portals
- **To accelerate application development:**
    - Relate data, regardless of where the data lives
    - Transform existing data into the insights you need
    - Generate record views and record actions
    - Apply record-level security to secure enterprise data

## Query Record Type
- Expression Rule: ATF_getALL
```
a!queryRecordType(
  recordType: RecordType,
  fields: {},
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 100
  )
).data
```

## Display Records


## Related Records: Create a related record list view
**Using Low code options, from the parent record type**
- create a new relationship between the parent and child
- once created you can then create a view using the Generate Record View option

**From Interface Design mode**
- Add a read only grid to the canvas and select the Relate record type as the data source
  - create a rule input of ParentRecord Type(will need a default value so you can test)
      - the test default value should query the record type
      - set this as a default vaule for the rule input
      ```
        a!queryRecordType(
          recordType: 'recordType!TTA Routine',
          fields: {},
          pagingInfo: a!pagingInfo(
            startIndex: 1,
            batchSize: 1
          )
        ).data
      ```
- create a filter, using the filter records option
    - Field: routineId = Value: ri!record[ParentRecord.id]

**From Interface Expression Mode**
- Add a gridfield component
  - add the related record as the data using a!recordData()
    - recordType: child record type
    - filters: add a logical expression configuration using a!queryLogicalExpression()

```
      a!gridField(
        data: a!recordData(
          recordType: 'recordType!TTA RoutineExercise',
          filters: a!queryLogicalExpression(
            operator: "AND",
            filters: {
              a!queryFilter(
                field: recordType!TTA RoutineExercise.routineId,
                operator: "=",
                value: ri!record[recordType!TTA Routine.id]
              )
            },
            ignoreFiltersWithEmptyValues: true
          )
        )
      ).......
        ```
