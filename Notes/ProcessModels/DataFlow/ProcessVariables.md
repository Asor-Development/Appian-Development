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
______________________________________





- **Parameter:** process variables that capture data at the start of a process 
    - all the data that is submitted in a start form will be stored in these parameterized process variables
    - after the process starts these parameterized process variables act as normal process variables
- PVs data can 
    - be written to an external database or a DSE
    - used to created records and reports