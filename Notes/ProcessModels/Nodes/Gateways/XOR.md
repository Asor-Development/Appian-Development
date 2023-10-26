# XOR Gateway
**Directs a single incoming path into one of multiple outgoing paths, based on a condition that is evaluated at runtime**
- the fist condition that is evaluated to true will determine which outgoing path is taken
- use the decision tab of the nodes configuration to create the condition
    - click new condition, this is where you would create the if statement
        ![XOR Example](../../../img/xorgateway.png)
        **If the cancel variable is true then the next step is the process end node, otherwise it is assummed that the user click submit and then the next step is to write to the database**
    - test and debugg each outgoing path of a gateway


## Add a cancel flow
**Handle the case when the user starts to fill out the form, but then wants to cancel the action**
- **On the form interface:** 
    - add cancel button on a form, with its `value` parameter set to true
    - add `cancel`rule input of type boolean, pass this rule input as the value for the `saveInto` parameter of the button
- **In the process model:** 
    - add corresponding cancel process variable
    - add XOR gateway node to process model
    - add a second end node and name it `Cancel End Node`
    - configure the decision logic on the XOR gateway using the cancel process variable
        - if true go to `Cancel End Node`
        - Else if no rules are TRUE go to `End Node`