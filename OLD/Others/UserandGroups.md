## User and Groups

### Users
- There are two uers types
    1. Basic User: 
        - by default basic users do not have access to anythiing in an application
        - adding users to groups provide them access to objects and app features
        - to give access to the Appian Designer add user to Designer system group
        - 
    2. System Administrator 
        - by default have adminstrative access to everything in their Appian environment
        - can design and adminster objects
        - accesss the adminstration console



### Create New User
1. Admin Console -----> Authentication -------> Users
2. Click Create New Users

#### Create Users in bulk
**In production Appian allows you to automate the process of adding users in bulk**
- LDAP & SAML authentication from Admin Console
- LDAP Tools Application(Appian App Market)
- Group Management Application(Appian App Market)


### Modify Access for basic users with application and system groups
_______________________________________________


### Groups
- used to organize users based on their needs in the app
- enable users to view and interact with different application components(records, reports, processes etc...)
- create groups as you go

#### Four Primary Reasons For Groups
1. **Security** is managed by assigning permissions to groups
    - Every Application requires an ALL Users group which holds an adminstrators group that will manage object security
    - after creating the All Users group you should identify groups by job function, team membership, or other categories
    - specify various levels of security for distinct groups, indiviual user access can be controlled by simply adding or removing users to and from groups
    - groups can contain individual user members or sub groups
     - object-based security in Appian, ou will start by securing groups first
    - security inheritance
2. **App Feature Access**
3. **Tasks and Messaging**


**As a best paractice all apps should contain the folowing groups**
1. All Users
    - will typically find in every app
    - parent group of all groups(contains all groups and users)
    - User added automatically when you add users to other groups
    - group type Custom
    - visibility should be public
2. Adminstrators
    - will typically find in every app
    - group for developers
3. Funtional and Role based
    - the groups created for business users
    - will differ from app to app based on requirements
    - **Role based** grouped based on role 
    - **Functional** grouped based on the task performed by its users(usually in larfer applications)
___________________________________

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


____________________________________________________

#### Create permission matrix: 
- specifies which groups are allowed or denied permission to access app functions and records
- consider who may need to access a function and records even though oit is not part of their mormal responsibilities
- the matrix should explictlt denied or allow access to groups based on the business rules

| Action        | Group1        | Group2   | Group3   |
| ------------- | ------------- | -------- | -------- |
| John          | Test1         | NewYork  | NewYork  |
| Bob           | Test2         | Toronto  | NewYork  |
| Bob           | Test2         | Toronto  | NewYork  |


______________________________________



#### Create and Secure Groups
- Create all users group first
- when you create the All Users Group, you will have to secure it after you create the Adminstrators group
- secure the All Users group by adding the Adminstrtors group with adminstrative access to its security