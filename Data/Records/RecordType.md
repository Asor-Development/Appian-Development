# Record Type Object
**A record type is an Appian design object that enables you to configure Appian Records**
**When desinging an applications you should start with record types and they way you design them matters because user need to able to look at a record, find what they need and take action on it quickly**
- When creating a new record type you do not have to save it to a folder
## Primary elements that make up the record type object: 
1. **Record data**
    - After you create the record type object you will have to define the source
    - you can choose from four different source types(database, process, salesforce, web service)
    - you should keep dat synce enabled because it will query an internal version of you data(cache)
        - this allow the data to be closer to the user, which increases the sped and performace of the record type
        - If there is an issue syncing your data, you can configure Appian to skip a failed sync, and to instead use data from the last successful sync
            - ensure that the Skip Failed Syncs is turned on(Access the Data Sync tab)
            - when Appian skips a failed sync, data from the last successful sync is used, administrators are notified, and relevant details are shown under Sync History
    - you can select and configure the fields you want to see in the record type object
            - you can change the field name and type
            - you can remove and rearrange fields
2. **Records**
3. **Record list**

**Each of these elements contribute to how users will eventually see and interact with the data**

- you can reference the record type in other objects throughout the application
    - saves time by utilizing the full power of low code development and deploy out-of-the-box objects with minimal configuration effort
- **Record Centric Approach:** Design objects around record types
    - Designing your application processes around taking action on data that’s displayed in a record
    - record types are the central driving component of an app, so using record centirc approach keeps processes shorter and application more scaleble
- brings all the data on a single topic and displays it in a an intergrated view reguardless of the source
- help define the data model
- record type data can come from a number of places(relation databases, appian processes and web services)
- you can use record type data to create custom fields which can be used to aggrate and transform data to display in many way
- data model and any data can be imported through record types, by connecting directly to your data source

- **Relationships:**
    - creating a relationship creates a link between fields in the two record types
    - you can create record type relationships to connect data across records and use them to create intergrated views oF data from different sources
    - relationships enable you to connect your data from different source types, such as databases and web services, and then seamlessly access, reference, and take action on this data throughout your applications
    - data model overview screen
- **Record Links:**Links are also a big part of record design. Links can help users to view relevant information that supports the record, but doesn’t display directly in it. It is also useful to display related data.

_________________________________________________________________________________


## Creating Record types
- the plural name is what business users will see in their Site, so pick the name that will make sense to your business users