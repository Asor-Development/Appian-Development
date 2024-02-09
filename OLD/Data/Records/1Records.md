# Records
**Records in a database or spreadsheet are usually single rows of data that only give you a one dimensional view of the data, but appian records takes that data to the next level. Appian Records enable you to access, organize, and take action on it in a consistent way, you can converge your data into a single point of management within your application.**

- Appian Records are a actionable view of related data
- **Actionable:** integrate enterprise processes allow us to build records in which users can take informed action when viewing the data
    - users can view records and take action on data, using sites, tempo, or their organizations web pages that have embedded interfaces
    - actions and related actions are defined in records
- **Source of Data:** record data can come from a number of places (relation databases, appian processes and web services)
    - consolidates siloed data and disparate systems by connecting and integrating information from multiple data sources
    - relation databases are usually use because they store data efficiently 
- **Data Sync:** allows Appian to cache a copy of the external data. With a copy of your data, the record type only has to query the synced data instead of an external source, allowing users to view data and complete tasks more quickly, this hepls with performace
    - When you enable data sync, you can apply record-level security to specify who can view each record
- **Define how users view your data:** 
    - you can set up a record list or read only grids for users to view and navigate a set of records
    - multiple views can be set up for the applications users allowing them to see the data that is most important to them
    - records should be designed in a way that users can quickly understand everthing in it and find what they need and act on it
    - can add custom record fields to your records to make easy data calculations and manipulations, allowing you to then reference these fields as easily as any other record field, to build reports, grids, queries, and more
- as a best practice records should be built first and the processes should be built aroud them
- Records data is managed primarly through **Record Types**
- easily adjust your data model


**Connecting data provides value to developers since they can connect to multiple data sources easily, increase performance by using fewer queries and easily connect data from different sources using relationships. Your users will have a single location to view and act on the data, they need quickly and efficiently**
________________________________________



### Process Backed Records
- First, recall that record types can display data from relational databases, Appian processes, integrations with external web services and APIs, or any combination of the above. 
- Process-backed records retrieve data from Appian’s own internal databases, which are not meant for long-term data storage like relational databases
    - Appian’s databases are what we call transactional and ensure quick retrieval of data. While there are use cases for process-backed records, such as when you want to view and act on processes, record types that use relational databases are more often the solution to common design patterns and requirements.

Lastly, a big mistake designers make is not thinking about how users will search for and find the data they need in a record type. Users need filters to narrow down and search the list of records, especially when the list is large. Developers need to find out how users might search for records and build user filters that meet their needs.

##### Try to avoid
- Creating process-backed records unnecessarily
- Creating records without user filters
_________________________________________________________________________