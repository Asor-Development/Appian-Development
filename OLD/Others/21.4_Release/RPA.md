# Appian Robotic Process Automation

- styling and functionality of the Robotic process designer updated so that it works like the othe areeas of Appian 

- Default Sections: provide a high level view of the robotic process
    - Setup
    - Main
    - Clean Up
- you can drag and drop actions into groups and to rearragnge the groups just drag and drop, that help you visualize your workflow
- use the actions palette to drag and drop an action into a section and configure it inline
- designer is currently in preview and more will be added over the next few releases


## Conditional action
- includes two flows where you can add actions for the robotic process to complete

## loops

- loops were built into robotic processes by iterating through a list using a variable to keep track of its position and when to exit the loop
    - now you can easily configure an action group to repeat, while a condition is true, or based on the number of items in a list
    - under iterations we can specify the number of times to execute the loop

## Task Recorder
- integrated in the designer view so you can start recording in a section or action group and start capturing interactions with the web browser
    - the saved actions appear in the robotic process, and you can make adjustments to the configuration in the robotic process designer
- to maintain a smooth flow while recording, you can now create a robotic process variable as you extract data from a web page
    - add and configure the variables directly in the task recorder
    - use variables to store data you extract from the web browser, and access them elsewhere in your robotic process
    - any recorded credentials will be removed when the recording is saved
    - task recorder now recognizes when you are entering usernames or passwords as part of a recording and the vlaues you type will be removed upon saving so they are never stored in plain text, ensuring security of sensitive information
        - when you are finished recording just go to the generated action to select the appropiate credential

### RPA Debug Mode 

- Diagnose RPA issues faster using the new debug mode
- Launch the execution in debug mode, you will be brought to the Workflow tab
    - right click an action to open the menu of debugging options
    - add a breakpoint where you want the execution to pause so you can isolateand access an action in the workflow
    - disable individual actions to test alternate flowswithout modifying the process
    - if you want to skip an action while you debug then you can disable the action
    - choose run from action to restart execution from anypoint in the process, to quickly iterate over problematic areas
    - options at the top of the page let you choose how to proceed with the debugging execution
#### Execution Log Tab
    Debugging execution steps are included in the log, where you can see all of the details of what might be going wrong