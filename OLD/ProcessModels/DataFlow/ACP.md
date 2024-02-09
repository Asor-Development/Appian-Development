# Activity Class Parameters(ACPs)
**Variables that are unique to a specific node,you can think of them like local variables for process nodes**
- act as containers to capture data that is specific to one node
- are both node inputs and node outputs
- only exist in the node
    - when a node completes the ACP value is no longer available, so ACP values should be stored in a process variable if they need to be used later in the process
- the data stored is used to perform some kind of activity
- You will not have the same ACPs on both the Input and Output Tab
- any data you want to be used by a process node needs to be mapped to a node input
- standard nodes do not have any Node Inputs by default
- many smart services have predefined node inputs


**Node inputs and Outputs save at the same time so,you should not save into the same process variable in node inputs as you do in node outputs, because the value you intend to end the node with may be overwritten**
_______________________________________________________________

## Node Inputs
- is modified as part of the node
- you can save the results from the input in the SaveInto parameter
**Node Inputs and Process Variables**
- to pass data into a node input a value must be provided
- node inputs can be mapped to process variables or they can be constants, literal values, or an expression to be evaluated
- node inputs are mapped to process variables on either the Data Tab or the Setup tab of each activity or smart service
- you can specify a default value for the node input by using the Value field in the Node Inputs dialog, when the process variable you are mapping doesn't currently have a value

### Creating ACPs: Node Inputs
1. Right Click node and click the DATA tab then INPUT tab
    - node inputs/outputs are mapped to PVs on the Data Tab or Setup Tab of each activity or smart service
2. Under Node Inputs Click New Input and Configure
    - **Name:** name of ACP
    - **Type:**
    - **Value:** the process variable you want to use to pass data to the node input
    - **SaveInto:** the PV that will store the value of the ACp if needed
_______________________________________________________________

## Node Outputs
**Are created when your node has completely new data that is generated**
- is modified as part of the node
- are often the result of executing a process node
- values can be further manipulated in the Output tab of the Data Tab

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