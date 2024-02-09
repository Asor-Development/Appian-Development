# Process Variables
**Placeholder for data that can be accessed throughout the lifecycle of a process**
- how data is transferred between different nodes in a model
- are unique to each process
- can have as many PVs as needed, one for each type of data the node generates
- each node can generate data that data is stored in a process variable
- the data stored is avaliable for the next node to use
- if the next node modifies the data, then the updated data is stored back in the process variable
- often serve as the basis for process report data during the process instance's lifecycle
- the value of your process variable can be taken from a process property, such as the Process ID
    - Process properties do not appear in the expression editor when designing the process model (as there are no active process instances); however, you can reference them by name in your expressions
- node inputs and outputs must be saved into a process variable to be used throughout the process

## Process Parameters
-  process variables that capture data at the start of a process 
    - all the data that is submitted in a start form will be stored in these parameterized process variables
    - after the process starts these parameterized process variables act as normal process variables
- PVs data can 
    - be written to an external database or a DSE
    - used to created records and reports
______________________________________
## New Process Variable
- **Name**
- **Type**
- **Value** default value of a process variable when starting a process
    - if the default value of a variable is used as a Parameter and is defined using an expression, that expression is automatically used as the default value for any associated fields in a process start form
    - expressions used as default values on start forms are used to calculate the parameter's value
- **Parameter:** Allows process variables to pass a value when starting a process(parameterized)
    - use when another object or service is starting the process and needs to pass in data
    - such as start forms, related actions, subprocesses, and receive message events can contain data, and should be associated with the parameters in the process model it's calling
    - if a a primitive system data type(text, integer, boolean etc...) is used, a field will automatically be added to the process start form and that field is automatically mapped to the process variable
    - if a complex or custom data type is used, the process start form cannot be used to populate process variables

- **Required** Checks if a process variable has a value prior to starting a process
    - can specify a default value if the user input should be optional
- **Multiple** Lets the process variable accepts an array of values
- **Hidden** Variable is hidden from parent processes, reports and process history
    - useful when optimizing for memory efficiency
    - Parameters cannot be hidden
    - The value of this variable can still be seen when monitoring the process instance
    - https://community.appian.com/discussions/f/general/19670/why-we-are-using-hidden-check-box-in-the-process-model-variable/76871#76871