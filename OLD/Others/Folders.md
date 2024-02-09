# Folders
- used to organize and assign access rights to application objects
- objects are organized into folders
- specific folders are needed for rules, process models, and documents (which are housed under the Knowledge Center)
- there is a specific hierarchy of folders that must  be created for each application

### You can create four types of folders: 
- **Rule:** there are different types of rules, you should create sub folders for each type of rule
    - Constants 
    - Decisions 
    - Expressions
    - Interfaces
    - Query Expressions
- **Process Model:**
- **Knowledge Center:** two Knowledge Center sub-folders are created for you, create more folders, as needed, to organize your documents. Documents, images, and any other type of file uploaded to an application are stored under the Knowledge Center folder
    - Artifacts
    - Application Documentation
- **Document:**
**Start with the top level rule folder and create sub folder for different objects**
__________________________________

- **Folder Security:**
    - documents or rules contained in a folder can automatically inherit user rights from the parent folder
    - Process Model folders do not provide security inheritance
    - Sub-folders are folders that reside in parent folders and inherit the security of the parent folder


### Create Parent Folders
**Create folders that will help you organize and secure application objects**
1. Go to Build View
2. Click New ------> Folder
    - Create the  Rules & Constant folder
    - Choose Rule as the Type
    - Name folder(AX Rules Constants)
    - Give Description(Contains all constants, expression rules, and interfaces used in the AX app)
    - Leave Parent folder field blank
    - Ignore the security warnings for now
    - Create -----> Save
3. Create the Process Model and  Knowledge Center parent folders the same 
________________________________________
### Configure Folder Security
##### Permission Levels
- **Administrator:** members can administer the object fully
    - includes deleting, modifying its security
- **Viewer:** members can view a specific object as a feature in a site(usually used for business users)
- **Editor:** members can modify the object, but cannot delete or modify security
- **Deny:** members can

- **Rules and Constants/Process Model Folders:**
    - Give Administrators group administrator access level
    - Give All Users group Viewer access
- **Knowledge Center:**
    - Give Administrators group administrator access level
    - Give All Users group Editor access


### Configure App Security
- Give adminstrators group administrator access level
- Give All Users group Viewer access level

### Create Sub-Folders Folders