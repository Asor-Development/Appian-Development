# Sub Process
- allow us to add embed process es within processes
- any process model can be used as a sub process

**Use Cases**
    - reducing complexity y separating steps into a separate process
    - repeating common sequences of steps
    - splitting up larger processes to reduce memory usage
    - Testing intergrations or other key steps independently

## Two Types of Sub Processes

- add parameterized PV for variables that you would like to pass in from the parent process model
![PV para](../../img/syncsubprocess.png)

### Synchronously
- the main process waits for the sub process to finish before continuing
- for sub processes with user interactions 
- PV values can be transferred back and forth between the sub process and the main process
- must configure output variables in the setup tab to move data back and forth



### Asynchronous
- the main process continues immediately after starting the sub process
- the sub process run independently of the main process
- often used for integrations or short processes with a small number of nodes
- useful when related activities do not need to communicate back to each other
- PV values can be transferred to the sub-process but they cannot be transferred back to the main process



## Create a sub process

1. Go to the sub process setup tab, choose synchronous or asynchronous 
2. Select the process model that you want to add as the sub process to initiate
3. Define whether you want the sub process to inherit security settings
4. Specify the input variables that you want to pass through to the sub process
![PV para](../../img/syncsubprocessipv.png)

- to configure the movement of data back and forth betwen the processes you will need to configure the Output Variables 
    - map the sub process variables to process variables in your main process
    - in the first list sele                    `ct a PV t store output data from the sub process
    in the `pick a sub process variable` field select a sub process variable from the list
![Sub Process Output](../../img/syncsubprocessouput.png)




- from the main process Click the `+` symbol on the subprocess activity node to open a read only version of the sub process, `View Sub-Process Model` window displays
- from the read only version of the sub process click the `Open and edit in New Canvas` button to open in separate tab of the process modeler


### Passing a process variable as a reference