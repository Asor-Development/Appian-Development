# How to Launch a process using a site
- users can start a process using a start form 

## Connecting a process with a start form to a site - Action
1. Open the site Object and under Pages click `Add Page`
    - **Name:** either static or dynammic
    - **Web Address Identifier** used to form the unique URL for the page
        - this field will be completed automatically when you add the name
    - **Width:** the with of the content
    - **Icon:** icon displayed in the tab of the page, displays above page title
    - **Type:** 
    - **Content:** the process model you want to use
    - **Visibility:**

**In order for users to view the site they will need at least Viewer level for the site and initiator level for the process model**

## Connecting a process as a Related Action
- record types are used to define related actions
1. Open the record object, click the record actions tab
2. Create a new record action and give it a name and description
3. Select the name of the process model, the parameterized PV that have been configured to receive data in the strt form will display in th context expression
4. Prepopulate the data by passing data into each PV using `rv!`(reference to current record)

![Creating a Related action from a record](../../img/siterelatedactionPV.png)