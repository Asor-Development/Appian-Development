# Selection Query

- returns each record as a separate item in the result
    - any field on the record type or related record type can be returned by selecting those fields in the query editor
    - can apply filters sorts and limits to your base record type and related records
        - you can then apply filters sorts and limits to your selected fields
    - if you select a related record field from a one to many relationship, you can define additional filters, sorts, and limits using `a!relatedRecordData()` to specify which related records to return, this is done after the query is generatged
