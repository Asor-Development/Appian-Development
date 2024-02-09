# Objects
- keep track of all your objects in Appian Designer, you can create, delete, duplicate, and rename objects
- icons are used to represent each object type
- By default, you view the list of application objects in what is called the Flat view
    - Click the icon in the top right to change to the Hierarchical view, which displays the folder structure used to organize objects. Objects that are not stored in folders will be displayed also.
- In the Objects view, you can mark a checkbox to filter the object list by object type. Then sort the list to help you find what you need
- Search for an object by typing the full or partial name.  Note that objects will be returned if either their name or description contains the search term
- select an object in order to see all the buttons displayed above the object list

**As you create more objects and develop your application, you'll likely need to delete or modify an object. It's important to know that many objects are interdependent; changing or removing an object can adversely affect performance of related objects.**
- Before taking action, click the DEPENDENTS button to check which other objects depend on the one you're about to modify

__________________________________________

## Object Types
- **Groups:** represent the different personas, security is assigned to groups
- **Record Types:** the primary way to manage data
    - record relationships connect data and help create integrated views of data fom different sources
- **Custom Data Types(CDT):** a developer defined data structure that represents a logical grouping of related data
- **Process Models:** drive actions performed in the application
- **Expression Rules:** perform a wide range of functions including retrieving, formatting, and transforming data
- **Reports:** visualize data aggregated across records, there are mutiple types of reporting formats
- **Sites:** provide a way for users to interact with applications
- **Interfaces:** are used to build forms, records, sites, and reports, that users can use to view, add, and modify data 

__________________________________

- some object are application specific while other objects can be reused by other applications
## Business Rules
- all objects that are considered business rules can be used by other business rules using expressions
- expressions rules, interfaces, intrgrations, decision objects and constants
- all business rules except constants are referenced by the prefix `rule!ObjectName`
- constants use `cons!ConstantName`
- when you reference a expression or business rules that contain rule inputs you need to pass in values for the rule input

