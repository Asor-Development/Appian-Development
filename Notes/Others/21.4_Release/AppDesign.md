# Application Design


1. Option to Automatically Create groups and folders when you create an application
    - this is enabled by default, the checkbox next to `Generate groups and folders to secure and organize objects` is marked on the dialog box when creating an application
        - Adminstrators and Users groups will be created
        - Adminstrators group will be assign Adminstrator rights and Users group will be assigned Viewer rights
        - Models, Artifacts, App Documentation, Knowledge Center and Rules and Constants folders will be created

2. Default Security Groups for Any Application
    - using the application properties
    - all new objects will automatically be assinged these groups

3. The expression editor of the the process modeler
    - now looks and behaves just like the expression editor everywhere else
    - you can access all features of the expression editor

4. Knowledge Transfer easier
    - attach important documents to apps
    - documentation stays with your app as it deploys accross environments
    - open the app's Settings Menu and select Application Documentation and click Add Documentation
    - you can upload documents or add links

5. Site Reviews and Testing
    - can now be fast tracked by directly accessing you site's underlying objects
    - when you are viewing a site page click the `Show Objects` button(at the bottom) to highlight the objects then select and open the objects right in Appian Designer

6. Expression Debugging
    - new `invalid` keyword syntax warning
    - alerts you in real time if your expression contains invalid keyword syntax

7. New Functions
    - **a!keys():** data types such as maps, records, and CDTs have associated fields, called keys
        - to check any map, dictionary, CDT, or record type whose keys should be returned
        - you can dynamically check which key exist in the returned data
    
    - **a!doesGroupExist():** check to see if a group exist
        - returns true or false

    - **a!isNullOrEmpty():** check for nulls and empty lists 
        - no need to create exprssions that check for null and length
    
    - **a!isNotNullOrEmpty():** check if a value is not null or empty 