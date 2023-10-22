# User Input Task
**Assigns a task to a user to be completed using a form**
- allows us to flow data back and forth between a form and a process model
- **Task Display Name:** should be dynamic so users can distinguish them on the Tasks tab of a site(located on the display tab)
- data can flow from a node to to a form and from a form to a node
    - to work you will need to map the rule inputs of the form to the node inputs of the user input task
    - whenever you pass data into the value of a node input that data will also display in the field of the form that it is mapped to
    - when the user submits the form the data from the form will be saved back into the node input
- **Example:** A supervisor must review a form completed by a student before it is submitted, the supervisor can request additional information befroe the request is submitted

- when you pass data into a form through a node input that data will display as prepopulated fieldsin the form, either as default value if the form is editable or as a read only value if the form is read only

**General Tab**
- Appian will create node inputs for you automatically when you use a form, just add the form and click Yes to automatically create node inputs
![User Input task with a form added](../../../../img/userinputtaskform.png)

**Data Tab**
- the node inputs will also be on the data tab
- the form rule inputs are mapped to the User Input Task node inputs
- the node inputs will not be configured to save data back into the process model

![User Input task data Tab with node input](../../../../img/userinputtasknodeinputs.png)

- to save data back into the process model you will have to add a value for the Save Into field(a PV)

![User Input task data Tab with node input with save into](../../../../img/userinputtasksaveinto.png)

- in order to pass data into a node input you should use the value field
    - usually uses a PV but we can also use a function, rule, or constant


**Assignment Tab**
- you must assign a ttask to a user or group for it to show up in their tasks tab
[User Input task data Tab Assignment](../../../../img/userinputassignment.png)