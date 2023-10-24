# Interface inputs
- a user input task usually displays a form to a user to collect some data to be used later in the process 
- define a interface that will display as a form when your process has an user input task node
- data you want to collect for a process must be listed as an interface input
- the interface input must be mapped to a node input, because the data cannot be saved straight from a form to a process
- can only save into process variables that have the same data type as the node input/output
- you use the forms tab to specify what values to pass to the interface

## Node Inputs
- if you need to edit data on a form that will then be used in a process, you need to map node inputs to your interface inputs
    - you need to map the process variables to node inputs using the Save into parameter
- if you are only displaying certain values, those process variables can be referenced directly in the interface inputs without the additional process variable to node input mapping
    