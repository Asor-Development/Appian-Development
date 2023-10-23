# Record Type Relationsips
**In Appian, you can quickly and easily establish relationships between different tables and sources of data through a record type. This means you can use a low-code experience to relate your record data so you can start building your applications faster**

- provide a fast and easy way to connect and reference a apps related data
- record type objects with sync enabled have a record type relationship diagram on the data model
    - Data sync must be enabled to establish record type relationships
- **Record type relationship diagram:** is a visual representation of all it's related record type
    - you can reference any record data by defining relationships with other record types
    - all the relationships for the record type is also listed on the right side of its data model
        - The relationship section allows you to edit relationships, open a related record type object, as well as delete the relationship. You would add custom record fields using the new custom record fields button at the top of the data structure tab
    - the record type designer will suggest relatuionships for your record types, and you can use the add all button to have Appian create all the suggested relationships
    - 
- when you establish a relationship between two record types your are creating a link from the record type to the related record type
- You can add a record type relationship at any stage of development
- this link is apart of the record type data model and it allows the record type to access the record fields and relationships defined on the related record types
- a single relationship is defined between one record type to another
- you can define one to one, one to many, or many to one

**Record relationships allow easy access to data from related records. Once you build relationships into a record type, you will be able to access the fields from related records without building queries**

________________________________________________________
## Security
**Users who can view related records**
- assigns any users who can see related records to the security rule
1. Record-Level Security ----> NEW SECURITY RULE
2. **Who is part of this rule:** Select Users who can view related records
3. **Related records from:** choose the record type relationship 
    - users can see the record type object if they can see at least one of the related records from the selected relationship
    - can add additional conditions if needed
4. **Test the rule with a user**

_______________________________________________________________________

## Creating A Record Type relationship
1. Go to the Record Type
2. Data Model ----> Add Relationship
3. Add **Related Record Type**
4. Add **Name**
5. Select **Relationship Type** and **Common Fields to Relate** 
    - **One to Many:** One Hotel can be related to multiple guest
        - **Common Fields:** add the field that the two records have in common
        -  doing this create a single query to the hotel record type to access both hotel data and related guest data
        - When you establish a one-to-many record type relationship, a new custom record field template becomes available
    - **Many to One:** A Car can have only one color but the color can belong to many cars, 
        - **Common Fields:** choose the field of the car that relates to the color, choose the unique key field of the color datatype
        - Appian automatically creates user filters for Many to One record type relationship(Click the  Search and User Filters tab to view the three  newly created user filters)
    - **One to One:**

## Edit Relationships
**Select the linked relationship name to make changes**
**Remove relationships by selecting the delete icon**

## Reference Two Record Types in an Interface
- Once yo create a record type relationship you can use both in the same view

### Example
**Currently the vehicle summary view shows summarizing information from the vehicle record type. You can add another section below that information to also show each vehicle’s maintenance history**

1. Drag a section component below the current section showing the vehicle summary. Update the label of the new section to Maintenance. You can also add an icon that represents the section
2. Drag a read-only grid inside the maintenance section. Then you should update the data source to the maintenance record type.
3. To get the maintenance records for this specific vehicle you simply filter the records. Click on Filter Records and select Add Filter to begin.
4. Set up the filter so the vehicle id in the maintenance record equals the vehicle id in the vehicle record.
5. Confirm that each maintenance record is for the vehicle being displayed.
6. Update the maintenance columns and add user filters to this maintenance read-only grid.





_____________________________________________________________

## Custom Fields
- When you establish a one-to-many record type relationship, a new custom record field template becomes available
- **Use Record Type Relationships in Custom Record Fields**
    - Record type relationships can be very useful when you want to aggregate and display data from a related record type
- **Aggregate related data using custom record field**
    - Use the Aggregate Related Record Fields template to filter and count items in a related record field
    - The Aggregate Related Record Fields template allows you to use the sum, average, count, distinct count, maximum, or minimum aggregation functions
    - This allows you to extend your record type’s data to build even more advanced interfaces using little to no code. The ability to aggregate data is particularly important for designing charts and graphs of your data.
    - Your record type must have a one-to-many record type relationship established to use the aggregate related record fields custom record field template

### Create a custom record field
1. Go to the record type Data Model tab and click New Custom Record
2. Select Aggregate Related Record fields and click next
3. Select the field
4. Select the Aggregation Function
    - **Sum:**
        - select the relationship using the Field dropdown
        - select the field you want to use
        - select `Sum of` for the aggregation function
        - Test
        - Name the new field
    - **Average:** to get the average
        - select the relationship using the Field dropdown
        - select the field you want to use
        - select `Average` for the aggregation function
        - Test
        - Name the new field
    - **Count:** to get a count
        - select the relationship using the Field dropdown
        - select the field you want to use
        - select `Count of` for the aggregation function
        - Test
        - Name the new field
    
    - **Distinct Count:** to get a distinct count
        - select the relationship using the Field dropdown
        - select the field you want to use
        - select `Distinct Count` for the aggregation function
        - Test
        - Name the new field
    - **Maximum:** to get the maximum
        - select the relationship using the Field dropdown
        - select the field you want to use
        - select `Max of` for the aggregation function
        - Test
        - Name the new field
    - **Minimum:** to get the minimum
        - select the relationship using the Field dropdown
        - select the field you want to use
        - select `Min of` for the aggregation function
        - Test
        - Name the new field

### Apply a Filter to a Custom Record Field
- With the Aggregate Related Record Fields template, you can also apply filters to custom record fields
- useful if you want to provide a side-by-side comparison of overlapping data, or to compare the same values over different date ranges

#### Example
**To compare the total number of maintenance requests to rejected requests, you'll create two identical custom record fields counting the total number of requests. Then you'll apply a filter to one of these custom record fields to only count the rejected requests**

**Apply Filter**
- Create the custom field for the rejected request, Using the Aggregate Related Records fields template
- Toggle the filter on, and configure the filter to only count rejected requests
- Once you have both custom fields, you can easily create an interface that contains a read-only grid displaying both the vehicle information and the comparative data about maintenance requests per vehicle.

### Custom Record Search
**If You have a read-only grid with your data, you can customize what fields are searched using the search box**

#### Search Box
- **Show search box** if selected, the search box will be present
    - If you do not want a search bar to be available simply unselect that option.
- **Limit Search To Selected fields** this allows you to limit which fields are searched
    - Select the dropdown menu and choose which record fields will be included in the search
    - When you have a record type with relationships established you can also choose those related fields.
- **Use Custom PlaceHolder** you can choose to add a custom placeholder for your search box


### Add Custom Record Field to an Interface

1. Add Read Only Grid to Interface
2. Select Record Type as the data source, and search for the record type you want to use
3. Add custom record field to grid
    - select Add Column button
    - click on the grid coulmn link in the configuration panel
    - use the select a dropdown menu in the display value option tto choose the cutom record field
    - Give it a label
    - Save
___________________________________________________________________________


## Reference Related Record Data

### User Filters with Related Data
- Whenever you define a new, many-to-one relationship, a user filter is automatically generated
    - created on the related record field used to define the relationship, also called the common field, and uses the first non-primary key text field on the related record type as filter options
    - will appear on the user filter page of the record type and can be modified at any time

#### Expression Based Filters
- are dynamic and allow users to filter on the data that is avaiable in the data source
- to create a user filter that contains dynamic choices, you need to create an expression-based user filter
- you can add an expression-based user filter to your record type
    - Search and User Filters ----> New User Filter
    - Name Filter and Select Expression
        - Change the radio button selection at the top of the screen from Guided Configuration to Expression
    - **Local Variable:** create a local variable with the a!localVariables() function
    - Set loacal Variable value using `a!queryRecordType()`
        - **a!queryRecordType():** query your record type’s field to generate the list of data
            - **RecordType Parameter:** add record type
            - **Fields Parameter:**
                - **a!aggregationFields():**for the field parameter you can use `a!aggregationFields()`
                    - **Grouping Parameter:** Add the groupings parameter and a curly bracket
                        - inside curly bracket add `a!grouping()`, 
                            - **Field Parameter:** you can start typing the field name, and Appian will suggest the record type field
                            - **Alias Parameter:** You can also create an alias for this field using the alias parameter
                    - **Measures Parameter:** add measure parameter and a curly bracket
                        - inside the curly brackets you will use `a!measure()`. 
                            - **Field Parameter:** you can start typing the field name, and Appian will suggest the record type field
                            - **Function Parameter:** for function parameter use the function (“COUNT”), you can also create an alias for this field using the alias parameter
                            - **Alias Parameter:** You can also create an alias for this field using the alias parameter
            - **PagingInfo:** add the paginginfo parameter for `a!queryRecordType()`
                        - use `a!pagingInfo()`, set limits on the amount of rows you retrieve
                        - **StartIndex:** a start index of 1 means the results will start with page 1
                        - **BatchSizeSet:** 
    - Add the `a!recordFilterList()` function, will create a list user filter to be used in a record list
        - **a!recordFilterList()** use the name parameter to give it a name
            - **Options:** toy can use `a!forEach()` function
                - **a!forEach():** this will loop throught the data and do something with each record as specified
                    - **Items Parameter:** set `local!variableName.data` as the value
                    - **Expression Parameter:** uses `a!recordFilterListOption()`
                        - **ID Parameter** `fv!index`
                        - **Name Parameter** `fv!item.fieldName`
                        - **Filter Parameter** use `a!queryFilter()`
                            - **Field Parameter** `recordType!recordName.fields.fieldName`
                            - **Operator Parameter** add the operator you want to use (=, <, > etc...)
                            - **Value Parameter**`fv!item.fieldName`
                        - **Data Count Parameter:** `fv!item.count`
        - Save

### Reference Tables

#### Example
**This table is used to set a vehicle’s category, condition, and status.**
-![Reference Table](../../img/referenceTable.png)


##### Record Type Source Filters
-  you can create three separate record type objects that will only bring in the data related to their entity
- The end result will be: 
    - 1) a category record type that only brings in rows in the table that have the type vehicle category
    - 2) A second record type that only brings in rows in the table that have the type vehicle status
    - 3) a third record type that only brings in rows in the table that have the type vehicle condition

- **Create Category Record Type**
    1. Create a new record type object and name it Category. 
        - The plural name given is appropriate so you can leave it as is
        - You should also provide a brief description so other developers know this record type uses the reference lookup table and contains the unique vehicle category values
        - Be sure to set up the object's security.
    2. Tell Appian where this record type’s data lives
        - Select the Tell Us About Your Data button
        - keep synced record selected so you can easily unify data from different sources using relationships, transform your data using custom record fields and faster queries and reports
        - choose which table from your database you would like to use
    3. Add a Filter
        - Since you only want the data in that reference table that relates to vehicle categories you will add a source filter
        - Select Add Filter then identify the type field, equals vehicleCategory
        -  You can test the filter on this same page and confirm that it is working as expected
    4. Configuring your data
        - Review the name of each field as it is in your database and what it will be called in your record type
        - the record fields will be auto generated by Appian, Make sure each record field name matches Appian’s best practices for naming conventions
        - confirm that each record field type is what you would like it to be
        - Save
___________________________________

## Apply Related Data to a Read-Only Grid
- once you have a relationsips established you can select related record data in design and expression mode(recordType!recordName.relationship.....)
- to display fields data
    - select the field name ----> Label