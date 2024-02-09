# [Local Variales(https://docs.appian.com/suite/help/23.3/Local_Variables.html#configuring-refresh-behavior)]
- locally stored/cached data
- can only be accessed within the function that defines them
- used to reference the same data mutiple times within an expression
- defined within the `a!localvariable()` function
    - the first parameters are reserved for the name and value of the variables
    - the last parameter is reserved for the evaluation of the variables
- can be used in the definition of other local variables defined after it
- when querying data you might want to query the database once the store it in a local variable and reference that variable when needed, if not then you would be querying the data every time you need it(performace)
- is defined in an expression instead of made available to the expression by the framework
- most local variables can be updated through a `saveInto` parameter
- some local variable configurations can make that variable an invalid save target


## Default Refresh Behavior
### Refresh when referenced variables change
- all variables defined within the a!localVariables() function 
    - refresh when a referenced variable in the value configuration changes
    - the value of that variable is recalculated and the variable is updated with the latest value
    - variables are considered dependencies even if they are only used within a part of the expression that isn't evaluated
    - you can still save into variales that can be updated automatically
- local variables that are used within interfaces can refresh their values under a variety of conditions
- you can change these refresh behaviors using the `a!refreshVariable()` function
- only available within an interface; they are ignored when used in an expression outside of an interface

### Never refresh
- By default, variables with no dependencies will never refresh, even without using a!refreshVariable() to disable it

### Referencing specific fields within a variable
- if a local variable depends on a specific field within another variable, it will only refresh when that field is updated
- applies for both dot indexing and bracket indexing
- `local!titles: rule!getTitlesByDepartment(ri!employee.department)`
    - will only refresh when `ri!employee.department` field changes
- also work for array indexing, but if you need to use the index function to provide a default value, then you need to place the index function in an intermediate local variable to achieve the same behavior

```
local!department: index(ri!employee, "department", "None"),
local!titles: rule!getTitlesByDepartment(local!department),
```
- `local!department` depends on the entire value of `ri!employee` and will update whenever any field within it changes
- `local!titles` will only update when the value of `local!department` changes
- the value of `local!department` won't change unless the `department` field changes, the same effect is achieved

### Disabling refresh when referenced variables change
- if you want to make a copy of a variable for later comparison or if you simply don't want something to be calculated each time a variable it depends on changes
- set the `refreshOnReferencedVarChange` parameter of the `a!refreshVariable` function to false
```
 local!original: 1,
  local!copy: a!refreshVariable(
    value: local!original,
    refreshOnReferencedVarChange: false
  )
```
- updating `local!original` does not refresh the value of `local!copy`
- refreshOnReferencedVarChange parameter is calculated every evaluation, even if the value of the variable is not
    - enables you to dynamically change the refresh behavior as data changes within the interface

### Refresh when specific variables change
________________________________________________________




Different between loads with evaluated?

load(): Lets you define local variables within an expression for an interface and evaluate the expression with the new variables, then re-evaluate the function with the local variables' values from the previous evaluation.

with(): Lets you define local variables within a function and evaluate the expression with the new variables. Note: In interfaces, this function differs from the load() function because it recalculates the local variable values after interactions. This recalculation always happens, even if the interaction's updates could not have impacted the variable's value. This means data queries and other slow operations in with() variables can have important performance impacts.

Have a look at the new evaluation function, a!localVariables(). It does everything load() does but with additional refresh options that may drastically simplify your design.