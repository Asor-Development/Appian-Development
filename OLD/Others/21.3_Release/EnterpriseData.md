# Enterprise Data


### Connected System Data Sources
- before this release you had to use the data console to manage data source details
- now you can store and work with data source details in a connected system
- does not work with plug ins taht need a data source
- use in new applications
- to use in existing applications you will need to change from an admin console data source to a connected system data source and that will require som design object updates
- create a connected system for each database that you want to connect to an Appian environment 
- you can then control access to the data source using object level security and the ability to deploy authentication information for data sources across environments
- this facilitates data segregation among applications in a single Appian environment, as different app building teams can create and secure their own data sources
- security can be set up on the connected system data source so that only your team can access it
________________________________


- database Administrators can now create multiple schemas in the Appian cloud database

- create a new schema in the database then create a connected system that points to that database schema, after that you can control who has editor and viewer access to both the connected system details and the data stored in the database schema

- Updating to 21.3 will automatically create two new groups, which are used to control access to the Appian Cloud database through phpMyAdmin, based on users needs
    - Database Editors
    - Database Viewers