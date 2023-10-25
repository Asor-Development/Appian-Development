# Appian-Development-Documentation

## Documentation
## Developer Playbook 
**The Developer Playbook offers checklists, tools, techniques, examples and best practices for implementing the Appian software and managing project delivery. These come from a variety of categories ranging from Project Delivery to Solutions Architecture.**
- [Learning Journey](https://docs.appian.com/suite/help/23.3/learner_journey.html)
- [Automation](./Notes/Automation/Automation.md)
- [Data](./Notes/Data/README.md)
- [Delivery Methodology](./Notes/DeliveryMethodology/README.md)
- [Interfaces](./Notes/Interfaces/README.md)
- [Interview Prep](./Notes/InterviewPrep/README.md)
- [Portals](./Notes/Portals/README.md)
- [Process Models](./Notes/ProcessModels/README.md)
- [Local Variables](./Notes/Interfaces/LocalVariables.md)
- []()
- [Other Notes](./Notes/Notes/README.md)

- []()
- []()
- []()
- []()
- []()
- []()

______________________________________________________


# Creating an Application in Appian
**Full:** Creates the application, a record type, and objects that perform a variety of functions
    - need to specify the record type name and the application name when creating a basic or full application
**Basic:** Creates the application, a record type, and record related objects
**Create From Scratch:** Creates only the application and no objects

1. Click New Application
    - add a name and description of the application's purpose
    - Keep the Generate groups and folders to secure and organize objects checkbox selected
        - Appian will generate the basic groups and folders of your app
        - admin group is set as the administrators of the app and basic users are viewers
    - Appian automatically creates an Application Prefix for you
        - it is a best practice to name each object by starting with an application prefix
    - It's a best practice to name each object by starting with the application prefix. 
_______________________
#### Managing an Application
- When you select an application, additional buttons are displayed above the list of applications
    - **Import Export:** Applications can be imported and exported across different environments
    - **Security:** Application security determines which groups and users can view, and interact with the application and its contents. By default, only the application creator and system administrators have access to the application. 
        - You will need to set security permissions for objects in an application, in addition to the application object itself. 
    - **Delete:** Deleting an application does not delete its objects. You'll need to switch to the Objects view, search on the application prefix in order to locate the objects, and then delete them.

###### Search Application Objects
- You can search for objects within an application or across all applications
- You can then filter and sort the object list
- The application prefix helps identify the application to which an object belongs.
- Some objects are environment-specific and do not belong to an application. For example, the Designers group can only be viewed if we don't select an application and just go to the Objects view instead.

###### Views
- **:**
- **:**
- **Users:**
    - Developers and system administrators have different permissions for the Users view, so they will see different options
    - Developers can modify their own user information and see a limited set of read-only details when searching for other users
    - System administrators can create new users, as well as view and search through the complete list of users
- **Monitoring:** Monitor the health of your environment or application using the tabs in the Monitoring view
- **Deployments:** 
    - As you import and export applications across environments, the Deployments view tracks your environment’s incoming and outgoing deployment history
    - You can search or filter the deployment history by application, status, type, or date. The Deployments view is also available within applications

###### Access Application Settings
- **To access the settings for an application**
    1. Go to the Applications view and click an application to open it in the Objects view
    2. Click the Gear icon, you can rename the application, and specify the application prefix to use in naming objects.(Application Properties)

###### Access Other Workspaces
- other workspaces can be accessed by clicking the grid icon in the Appian Designer
    - **Adminstration Console:** System administrators use the Administration Console to configure system, authentication, and integration settings and to monitor system activity
    - **Cloud Database:** Select Cloud Database to access the relational database for your Appian Cloud site. The interface used for the Appian Cloud database is an open-source tool named phpMyAdmin
    - **Tempo:** Tempo is an interface for feeds, tasks, and actions that combines social collaboration, filtered views, and forms. As a user interface, Tempo is more limited than sites, but may be the right solution in certain circumstances

_________________