# [Record Type Constructor](https://docs.appian.com/suite/help/23.3/reference-records.html#use-a-record-type-constructor)
- allows you to map each value to a particular field reference or relationship reference in the record type
- can use to create a single record in your expression

## Basic Record Type Constructor
- in an expression rule, enter a record type reference followed by parentheses
   - `recordType!Case()`
- in between the parentheses, enter the record field references followed by a : colon and its corresponding data value on the right
```
recordType!Case(
   recordType!Case.fields.id: 1,
   recordType!Case.fields.status: "Open",
   recordType!issueType: "Shipping"
)

```

## Nested Record Type Constructor
**Create a nested constructor to define the related record data**
- reference the record type relationship followed by a `:` and the related record type reference on the right followed by parentheses
- enter the related record field references followed by a `:` and its corresponding data value on the right

```
recordType!Case(
   recordType!Case.fields.id: 1,
   recordType!Case.fields.status: "Open",
   recordType!Case.fields.issueType: "Shipping",
   recordType!Case.relationships.customer: recordType!Customer(
      recordType!Customer.fields.firstName: "Amy",
      recordType!Customer.fields.lastName: "Smith",
      recordType!Customer.fields.title: "Manager"
   )
)
```
## Nested Record Type Constructor(mutiple lines opf related data)
**Create a nested constructor to define mutiple lines of related record data**
- reference the record type relationship followed by a `:` and the related record type reference on the right followed by parentheses
- enter the related record field references followed by a `:` 
- use a forEach function to add each related data record
```
recordType!ATF Order'(
  recordType!ATF Order.fields.customerName: ri!customerName,
  recordType!ATF Order.fields.numberOfItems: ri!numberOfItems,
  recordType!ATF Order.fields.orderStatus: ri!orderStatus,
  recordType!ATF Order.fields.orderTotal: ri!orderTotal,
  recordType!ATF Order.relationships.atfOrderitem: a!forEach(
    items: ri!orderItems,
    expression: recordType!ATF OrderItem(
      recordType!ATF OrderItem.fields.categoryId: fv!item.categoryId,
      recordType!ATF OrderItem.fields.itemId: fv!item.id

    )
  )
)
```
- There are specific use cases that still require you to use a constant to indirectly reference a record type
    - https://docs.appian.com/suite/help/23.3/Working_with_Data_in_Process.html