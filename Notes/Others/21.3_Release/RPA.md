# RPA(Robotic Processe Automation)
**Assigns repetitive, time-intensive tasks to robotic processes**

- frees up people to focus on critical, complex work
- can acess data no matter where it lives
- really valuable when accessing legacy and other systems that dont provide an API
- is apart of the Appian Unified Platform
    - brings together process mining, workflow and automation enbling you to discover, design, automate and continuously improve your business processes
_____________________________________

##
## Task Recording Tool
- enables you to record actions on the desktop and bring them into the workflow
- installed automatically on resource
- you can launch it directly from the workflow designer
- currently in Preview mode, you can use it to create broswer automations while enhancements are being added

### How To
1. Add generic action
2. Select the Task Recorder
3. Start interacting with a broswer
    - a step is record each time you click or type
    - you can mae the steps as you go
    - you can extract data from different fields, define where the data should be stored and complete most of the configuration for each action
    - add a name for the recording
    - once saved, you will see a section added message in the workflow area
    - then you can complete final edits such as adding flow logic

________________________
## Consecutive Robotic Processes
- when you need to run consecutive robotic process executions you can launch each item directly from your process model
- Benefits:
    - robust exception management for each item executed
    - better resource utilization

**Streamline the effort by automatically skipping setup and cleanup activities**
- the on screen messages tell you to define your setup steps in the new section found in the dropdown list, when working wih robotic processes
- you can also select cleanup from the dropdown list to define the cleanup steps
- go to the advance configurations tab under consecutive execution behavior, click the radio button beside: Skip setup and clean up for consecutive executions

## Process workflow Enhancement
- You can start more than 1,000 processes at the same time using Multiple node instances for sub-processses nodes

- implication for RPA is when you want to launch a batch RPA execution of more than 1,000 items you can split out each item into its own execution

### Configure MNI Sub process
1. go to the process properties Other Tab and configure the multi-node instances
    - Appian will automatically process the total number of instances in batches of 1,000 until the entire batch is done to efficiently complete execution of the node
    - For example if there are 5,000 items, 1,000 instances will cocurrently run until all 5,000 instances are processed


**If you need to enter creditials to log into a web application, use our new low code capability to dynamically select from a pool of available credentials**
- use for parallel executions across multiple resources, while ensuring that each resource pick up a unique credential

1. In the Workflow area(Appian RPA -----> Robotic Processes) select the action where you want to add credentials and click the list icon
2. Open the browser module and click **Interact with element**
3. Under interaction type choose **Update value with username**
4. For selection method choose any avaliable credential and then select the applicatiion

- Appian will reserve a available credential from the selected application

- For example if a robotic process has 3 creditials, any resource that picks up the execution can retrieve one of those 3 credentials

_________________________

## Seamlessly swithc between different browsers and browser types during a single execution

## Manage multiple applcations across tabs and browsers to meet your use cases

## Enhanced Browser Methods
    - open different browsers
    - switch between different browsers
    - close specified browser type