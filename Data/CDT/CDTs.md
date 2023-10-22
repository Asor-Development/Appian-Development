# CDTs (Custom Data Types)
**A custom data type is a user-defined data object that structurally mimics the logical grouping of related data created within the table of your relational database.  It, along with the data store, is what allows you to structure and write data to the database**
![Reference Table](../../img/cdts.png)

- CDTs are a list of data fields that correspond to a record type and associated database table
- The primary purpose of CDTs is to structure and WRITE data back to the database
- Applications will typically rely on multiple database tables, and therefore, multiple CDTs
- **Data Store:** the connection that communicates changed record data from a CDT to a relational database, connects Appian to a relational database
    - The primary purpose of a data store is to connect Appian to an external database
    - A typical app needs one data store for all tables in a data source
    - You may need more than one data store if you're connecting to tables across data sources
    - you will need to update the data store each time you connect it to a new table for writing data
    - record types can generate the data store object automatically when creating record actions, and this is the preferred method
- record types are an efficient, performant way to query and relate data from different tables but CDTs are used for updating, inserting, and deleting data in a table.

___________________________

## Creating CDTs
**There are five ways in which CDTs can be created**
1. Automatically when You Create a Record Action
    - simplest and most intuitive way to create a CDT
    -  If you have a database table with data sync enabled as the source of your record type, Appian can automatically generate common record actions for that record type using basic information you provide. The generated action uses existing objects or creates new objects to meet the object requirements
2. Existing Database Table
    - Use this option when you have an existing table in your database and need to create a CDT in order to write to that table within Appian
    - A CDT will be created for you with all the configurations necessary to automatically map to that table. As a developer, you will typically deal with the pre-configured data source. If that’s not the case, you will need to reach out to your System Administrator to get the source configured for you
3. From Scratch
    - Creating a CDT from scratch will require you to add each data field and configure the parameters including: name, type, length, array and key.  
4. Duplicate Existing CDT
    - All existing configurations on the original CDT, including any JPA annotations, will be duplicated. For example, if the original data type is mapping to a database table called Vehicle using the @Table annotation, the new data type will also map to the Vehicle table
5. Import XSD
    - Use this option if you have an XSD file that defines your CDT. You may also create or edit multiple data types at once by importing a single XSD file that contains multiple data type definitions.

## Security.
- CDTs are unlike any other design objects because they are secured at the level of the objects that use them

**For example, if an interface calls a custom data type, then the interface’s security is applied. Additionally, only system administrators and designers can perform actions on custom data type.** 

The following table outlines the data type actions that can be completed by each:
![CDT Security Table](../../img/cdtsecurity.png)
___________________________

## Creating CDT From Scratch
- update the namespace
    - edit the namespace to includethe application prefix, at the enf of the name adda colon and the prefix `:AX`
    - the combination of the CDT's namespace and its name will uniquely identify the specific CDT, to easily be able to differentiate it from other similar CDTs across environments and objects
- the name of the CDT should contain underscores not spaces 
- provide a description
- use camel casing for field names
- all CDTs must have a primary key

## Creating CDTs from existing Database Table
- more common
- select datasource
- select databse table
- update the namespace
    - edit the namespace to includethe application prefix, at the enf of the name adda colon and the prefix `:AX`
- update Name
- provide a description
- Edit fields if needed, rename, delete, and update field type if needed and allowed
- make sure the checkbox at the bottom is select to create a data store entity for this type
- Make sure you ahve a data store added or you can create one
- make sure entity name is correct at the bottom
- Click create


## Creating a Data Store

**Remember, record types can generate the data store object automatically when creating record actions, and this is the preferred method**

1. New ----> Data Store
2. **Name:** `AA Data Store`
3. **Description:** add description
4. **Data Source:** add data source
5. Secure Data store
6. Add CDTs to data store as an entity
    - **Name the Entity:** `AA_Part`
    - **Choose Data type:** choose the CDT
    - Save
    - Re-publish the data store each time you add a new entity
7. Scroll down and Verify
    - Verify checks to see if the connected database has a table with the same structure as the CDT
    - if the table exists you will see a green message saying that the mapping have been verified then click save and publish, 
    - if there is there is no table, Appian creates a table after you click save and publish
    - Once you add entities and publish a data store, your CDTs will be mapped to the corresponding database tables


## Editing CDTs
- your approach to editing CDTs will differ from other design objects because CDTs are connected to external database tables that likely need to be managed separately
- Before updating your CDT, use the Dependents view to determine where exactly the CDT is used and the exact impacts your changes may have

### Editing Fields

- the most common editing method is to make the change directly in the database column first
- After that, you’ll need to go back to your CDT to download the XSD file
- Complete the edits directly in the file, and then create a new version of the CDT from the updated XSD file
- This approach is preferred by Appian developers because it provides more control over CDTs
- To learn how to edit the XSD file, go to the Appian Documentation, search for the Custom Data Types page, and review the steps for various editing workflows. 

### Adding Fields

- you can add a new field to your data model simply by adding a new field to the CDT
    - Once you make the change, you'll need to verify your table mappings and re-publish the data store.
    - This will add a new column to the connected table
    - to query data from that field for viewing in records and reports, you need to update the record type data model. 