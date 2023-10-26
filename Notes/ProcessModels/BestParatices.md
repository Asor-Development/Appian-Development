# Process Models Basic Best Practices

- has labeled swim-lanes with default assignment
- display name is set and is dynamic 
- all process flows have been tested and no errors occurred
- all models have custom Alert settings configured using groups
Processes that contain user input tasks or a significant portion of log: 
- Archive after 3 days. Everything else: Delete after 0 days.
- split process models into sub-processes to compartmentalize sets of functionality
- avoid large cumbersome process models 
- models contain no more than 30 nodes
- models contain no more than 50 process variables
- XOR gateways are used in front of MNI nodes to check for empty/null values
- formally terminate a process when it reaches an end event node
- process flow always reach at least one terminating end event
- process-to-process messages are targeted to a specific process instance using PID


All complex logic is documented using annotations (anything that isn't obvious)
All external integrations are contained in their own subprocesses to minimize the impacts of the external systems changing their interfaces. E.g. anything other than query rules and data stores should be encapsulated.
If the external integration points are using CDTs to exchange data (such as integration with web services), use these CDTs locally within the integration process models or rules and create business CDTs to be used by the rest of the application. This prevents changes in external systems data structures from having widespread impacts in the application.
Best practices for creating memory efficient models have been followed
Design short-lived processes to perform actions and maintain the data. Consider using process model based related actions instead of quick task related actions when possible.
Ensure there is no way to unintentionally loop through a smart service node (db write, create document, etc)

Process Nodes
Nodes are named with verb-noun format
Task display name is set and dynamic
Every SAIL form node has all inputs specified as process variables or activity class parameters
All XOR/OR gateways have a single incoming flow
All outgoing flows from a gateway are labeled
XOR gateways are used instead of OR
Node inputs do not make the same query call more than once
CDTs are not passed by reference between parent and sub-process
Looping functions are used instead of Multiple Node Instances where possible
On the Other Tab for Forms, check the "Delete previous instances" and do not check “Keep a record of the form”
Use rules and constants instead of hard-coded values in the process nodes



# Process Model Nodes
- **Standard Nodes:** 
    - **activities:** used to capture and process business data(script task, subprocess)
    - **events:** enable designers to start, stop and or continue the progress of a workflow
    - **gateways:** used to control the workflow in a process based on business logic

________________________________________________________________________________________________________________
