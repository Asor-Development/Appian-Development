# Process Modeling
- most organizations document their business process by drawing a workflow diagrams(using white boards or software), this defines what happens during each step in a process and sequencing the steps in the order they should be preformed, some steps are assigned to different groups for completion other steps are automated
- the process modeler is used to diagram business process using standard business process model and notation symbols
- brings humans and automation together
- has drag and drop activities that developers can use to create a workflow for automated task to execute specialized business services based on the user input 
- process model are not static
        - **Processes:** enable performing activities that capture and modify data
        - components that can perfom activities can be added to a process model
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
- has to modes/views
        - **Analysis View:** can be used during planning to draw a simple process model
                - used to create a high level view of the process, it is recommened that you kepp this diagram as a separate object
                - can reference this process model when you are creating the process model in designer view
                - can include annotations
        - **Designer View:** where  you crate a working process model with functionality
____________________________________________________________________________________________________

## Process Model compoenets
- Nodes
- it is recommended to test and debug each node after it is added to the process model
- double click on a Node to rename it
- when you are connecting nodes the line truns blue when the component is connected then you can drop it, move the node around to make sure it is connected, if the connected line moves with the node then it is connected
- SHIFT will automatically toggle your pointer to the connector tool. You can also use the Connect 
 icon to connect the nodes.
- make sure process model follows best  practices
        - **Number of nodes:** there should have fewer than 30 nodes
        - **Look for reusablity:** are any steps repeated, think about creating a subprocess that can be called each time a process needs to complete these steps, this tends to be more efficient and reduces the memory footprint for the model

## Major elements used to build a process model
- **paleltte:** where you select and search for nodes and smart services
        - **Standard Nodes:** used to capture and process business data, and control processes
           - [More About Standard Nodes...](./StandardNodes.md)     
        - **Smart Services:** provide speicalized business services,these services complete specific tasks such as sending emails, or creating folders or calling integrations there are two types
                - [More About Smart Services...](./SmartServices.md)
- **canvans:** where you create and configure the process model
- **tool bar:** where you access process model tools and properties(process instances)
- **menu:** where you access additional tools and properties

____________________________________________________________________________________________________

## Documentation
**To preserve a record of your work select tools and generate documentation from the menu**
- creates a summary of the process model with information about the properties, diagram, nodes, and content 
________________________________________________________________________________________________________




