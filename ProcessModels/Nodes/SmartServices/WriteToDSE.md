# Write To Data Store Entity
**A smart service that save data into a Data Store Entity**

### Configuration Tabs
- **Data: INPUT** 
    1. **Node Inputs:** has one pre-created node input **Data Store Entity** for the data store entity, that should point the smart service to a psecific table in your database to insert the data into
        - **Value:** the Data Store Entity node input needs a CDT as the value to connect to
            - a constant of the DSE should be used 
        - we do not need the data outside of the node so the save into can be left blank
    2. In order the get the data from another node we also need a new node input to pass in the data 
        - Name it based on the data you are sending
        - Type should be same ass process variable
        - Value is the process variable that contains the data we are writing
        - we are not modifying the data and if we dont need it outside the node then we can leave save into blank
            - you can save into a pv at the parent level or save into individul fields of a CDT
            - if saving at the parent level all fields will be updated even if there is no new data in them, fields without new data will be set to a null value
            - if you need to use an expression to set the value of an element in your CDT, you must save into individual fields of the CDT


- **Data: OUTPUT** 
**Example:** we need the id of the vehicle data returned to do something with it
![Write To Data Store Entity Output](../../../../img/wdseoutput.png)