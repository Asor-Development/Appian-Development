# Interface Variables and Inputs
- Some interface components allow users to interact with them
- interface can **dynamically respond to user interactions**
    - when a user interacts with an interface, the interface expression is reevaluated and the resulting interface displayed

## saveInto Parameter
- every interface component that supports user interaction has a parameter called `saveInto`
    - only way for a user to cause changes
    - defines what changes to make when the user interacts with the component
- value of the variable configured in the `saveInto` parameter does not automatically show up as the display value of the component
    - the `value` parameter must be set separately for the change to be displayed by the component
    - if this is not done when you click away from the text input, the text input becomes blank
**There are three ways to respond to user interactions**
1. Save the user's input to a variable(local or rule input)
    - when a user interacts with a component and that component's saveInto parameter is configured with a variable, the component's updated value will be saved to that variable
    - most common way to configure a component is to set its value and saveInto to the same variable
2. Save a modified or alternative value into a variable, using `a!save`
3. Execute a smart service, for example, a!deleteDocument(document: ri!requestForm)