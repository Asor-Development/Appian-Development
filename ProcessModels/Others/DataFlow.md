# Processs Model Data Flow
__________________________________________________________

## Process Variables(PVs)
**Variables that are unique to each process**
- a node can have as many PVs as needed, one for each type of data the node generates
- act as containers to capture data through the process
- carries data from one node to another
- each node can generate data that data is stored in a process variable
- the data stored is avaliable for the next node to use
- if the next node modifies the data, then the updated data is stored back in the process variable
- **Parameter:** process variables that capture data at the start of a process 
    - all the data that is submitted in a start form will be stored in these parameterized process variables
    - after the process starts these parameterized process variables act as normal process variables
- PVs data can 
    - be written to an external database or a DSE
    - used to created records and reports
- **Activity Class Parameters:** PVs data must be put into a place so the node knows what to do with it

__________________________________________________________

## Activity Class Parameters(ACPs)
**Variables that are unique to a specific node**
- act as containers to capture data that is specific to one node
- only exist in the node
- the data stored is used to perform some kind of activity
- when creating ACPs you will not see ACPs and an option, they are also called node inputs
- to pass data into a node input(ACP) a value must be provided
    - you can provide a vlaue using a PV
- when a node completes the ACP or node inputs/outputs value is no longer available, so ACP values should be stored in a process variable if they need to be used later in the process
- standard nodes do not have any Node Inputs by default
- many smart services have predefined node inputs
____________________________________________________________________

## Node Inputs and Outputs
- You will not see the same ACPs on both the Input and Output Tab
- ACP that is an input node and is modified as part of the node
    - you can save the results from the input in the SaveInto parameter
- ACP that is an output node and is modified as part of the node
- ACP that has completely new data that is generated that is when you will se an output
___________________________________________________________

### Creating ACPs: Node Inputs
1. Right Click node and click the DATA tab then INPUT tab
    - node inputs/outputs are mapped to PVs on the Data Tab or Setup Tab of each activity or smart service
2. Under Node Inputs Click New Input and Configure
    - **Name:** name of ACP
    - **Type:**
    - **Value:** the process variable you want to use to pass data to the node input
    - **SaveInto:** the PV that will store the value of the ACp if needed

__________________________________________________________

### Creating ACPs: Node Outputs
- sometimes node inputs produce some kind of output after the node inputs are evaluated
- often the result of executing a process node
- the output values can be manipulated on the DATA ---> OUTPUT tab
- for the values to be used throughout the process it must be saved back into a PV
1. Right Click node and click the DATA tab then INPUT tab
    - node inputs/outputs are mapped to PVs on the Data Tab or Setup Tab of each activity or smart service
2. Under Node Inputs Click New Output and Configure
    - **Result:** 
    - **Operator:**
    - **Target:** the process variable you want to use to pass the data to




__________________________________________________________

