# Expressions

open the rule in a new tab. This can be done by 
 holding the ctrl/command key and clicking the name of the rule within the Expression 
 Edito
## Expressions Rules
**A stored expression that returns a value that may be influenced by one or more inputs.**

- Expression rules are used to manipulate data**
- perform a wide range of functions
- can be created and used in various Appian objects
- can be used and reused across mutiple objects in a application
- use the expression editor to create stand alone expression rules
- while working in an object expression ruls are fields identified by the expression editor icon
- you can switch to expression mode in an interface and see the entire interface written as one long expression
- reference a expression rule by using `rule!`

**You need a folder to store your expression rules for organizational and security purposes**
- Start with the top level rules folder and create sub folder for different objects
- Rules
    - Expressions
    - Constants
    - Interfaces
    - Query Expressions
    - Decisions
    - etc....
- Expression rules inherit their security from the folders
- security for rules are applicable to developers only
### Expression Editor
- when you create a expression rule object it opnes in the expression editor
- can be accessed from with a object

#### Sections
-**Tool Bar:** used to create, format etc.... with expressions
- **Editor(top left):** when you define the rule
    - have access to functions, literal value, rules constants operators
    - **Documentation(bottom left):** documentation on how to configure functions an rules 
    - **Rule Input(right):** enables you to create variables in the rule that represent dynamic data
        - rule inputs need to be passed a value when the expression rule is executed
        - camel casing naming convention `helloThere`
        - data type and whether or not it can accept a list of values
    - **Test(middle):** where you test the rule
        - where you would give the rule inputs a value to test
        - click test rule and the rule will be evaluated and the output will be displayed
### Create Expression Rule Object
1. New ---> expression rule
    - Name: `AA_TicketNumber`, use pascal casing



## Expression Components


[All functions documentation](https://docs.appian.com/suite/help/21.2/Appian_Functions.html)

- to reference a CDT in and expression `type!nameOfObject`()
- can click the `fx`(View Function) tool bar icon in the expression editor to view functions that are grouped by category
- can type `fun` or `function` in the expression editor to se a list of available functions
- when you reference a expression or business rules that contain rule inputs you need to pass in values for the rule input

## Testing and Troubleshooting Expressions
