# Security
## Record Security
- if you have data sync enabled, you can add security rules to define who can see which records

## Record Type Object Security
**Displaying a record type to a user is based on more than just the record type’s security** 
- users that do not have at least Viewer permissions to the object will not be able to access this record type's data
## Creating Security Rules
- you can create security rules for different users in your application
- set up these rules based on 
    - Who is part of the rule? 
    - Which records they can see?
1. Select Record Level Security
    - **New Security Rule:**You can create a security rule through a guided experience(recommended)
    - **Configure a security expression:** You can configure a security expression, wich uses filter conditions to determine who can see which records
2. New Security Rule
    - Choose who is apart of the rule
        - **Users found in groups**
        - Users found in fields
            - Add a field that contains users
            - You can add additional conditions if needed
        - User who can view related objects
            - leverages your record type relationships so you can extend the existing security rules on a related record type to the base record type
            - You can add additional conditions if needed
    - Add the Groups you want to be apart of the rule
    - Which records can they view: two options either all or cetain ones
    - Once you click create the new rule will appear on the records security page
    - You can test this rule right from the records security page
**You can also set visibility rights for additional views and related actions. For example, you can use the a!isUserMemberOfGroups() function to restrict access to a view or action to a particular group. You can use the same function for the components in the record view interface and conditionally display them only if the logged in user meets our criteria.**
_______________________________