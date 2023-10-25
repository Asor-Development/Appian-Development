```
a!localVariables(
  local!data: 
  a!queryRecordType(
  recordType: 'recordType!AX Vehicle',
  fields: 'recordType!AX Vehicle.fields.vehicleMake',
  pagingInfo: a!pagingInfo(
    startIndex: 1,
    batchSize: 100
  )
  ).data['recordType!AX Vehicle.fields.vehicleMake'],
  union(local!data, local!data)
)
```