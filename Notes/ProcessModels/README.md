# Process Modeling
**Process models are a way to graphically describe business processes. In Appian process models are not just the starting point for building your process, it is the process. Appian translates your business workflows to executable processes automatically**
- the process modeler is used to diagram business process using standard business process model and notation symbols
- has drag and drop activities that developers can use to create a workflow for automated task to execute specialized business services based on the user input 
- process model are not static
- **Processes:** enable performing activities that capture and modify data
 - query data, assign tasks, perform calculations on data, send email, generate document
- **Naming:** `AX Add Vehicle Form` Application prefix and spaces between words
- **Security:** process model do not inherit security from their folders
- **Actions:** each action and related action should be linked to a process model
    - drives actions perform in the application
    - actions are used when there is no specific record involed(add vehicle etc...)
    - related actions are preform on specific records
    - a process model should be linked to each action and related action
    - document each action/related action, the record, and the process model
____________________________________________________________________________________________________
## The Process Modeler Views
- **Analysis View:** can be used during planning to draw a simple process model
    - used to create a high level view of the process, it is recommened that you keep this diagram as a separate object
    - can reference this process model when you are creating the process model in designer view
    - can include annotations
- **Designer View:** where  you crate a working process model with functionality
____________________________________________________________________________________________________
## Process Model compoenets/nodes
- test and debug each node after it is added to the process model
- SHIFT will automatically toggle your pointer to the connector tool(can also use the Connect 
 icon to connect the nodes)

________________________________________________________________________________________________________
## Major elements used to build a process model
- **paleltte:** where you select and search for nodes and smart services
- **Standard Nodes:** used to capture and process business data, and control processes
    - [More About Standard Nodes...]()     
- **Smart Services:** provide speicalized business services,these services complete specific tasks such as sending emails, or creating folders or calling integrations there are two types
    - [More About Smart Services...]()
- **canvans:** where you create and configure the process model
- **tool bar:** where you access process model tools and properties(process instances)
- **menu:** where you access additional tools and properties

____________________________________________________________________________________________________

## Documentation
**To preserve a record of your work select tools and generate documentation from the menu**
- creates a summary of the process model with information about the properties, diagram, nodes, and content 
________________________________________________________________________________________________________

## BEST PARATICES
- **Number of nodes:** there should have fewer than 30 nodes
- **Look for reusablity:** are any steps repeated, think about creating a subprocess that can be called each time a process needs to complete these steps, this tends to be more efficient and reduces the memory footprint for the model


- [Process Instances](./Model/ProcessInstances.md)
- [Smart Processes](./Model/SmartProcesses.md)
- [Data Flow](./DataFlow/README.md)
- []()
- []()
- []()
- []()
- []()