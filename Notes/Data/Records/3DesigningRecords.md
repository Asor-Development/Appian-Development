# Designing Records
**Records do not focus strictly on the data itself (its type, value, and source). Developers will also need to design good user experiences by incorporating thoughtful user filters, related actions, and visually appealing views.**
### Define Records
1. What data defines my record types?
    - identify record types
    - what data does it need
2. How should the data be displayed and organized?
    - different insights that different users want to see
    - mock-up what the record list and views should look like
    - think about how to engage users, and incorporate visual components
    - try to avoid tons of text filling up the page
    - take a look at the data and consider visual ways to present it, such as by using images, progress bars, and icons
    - use layouts to organize and make the content more readable and appealing
    - follow an information hierarchy to help guide the user to certain elements of your record first
    - consider mobile use cases and how users navigate the data
    - ensure that other application objects drive users to the record
        - the record type is typically the heart of the application, we want users to easily access, view, and understand the data that’s being displayed
        - reports which aggregate data across records should enable users to drill-down to individual records, to see the data for individual objects or processes
        - forms that provide contextual data should also link to records, in the event that users need more information before they can make a decision
    - it is okay to borrow from other people’s designs
        - find out what has worked well in other applications and consider implementing similar designs for your record types
        - Taking the time to research record designs that have worked well in the past can save you time when designing your records
3. What do users need/want to do from a record view?
    - who your users are and what they need to achieve
    - what actions should be available
4. Who can see the records?
    - Use security rules to determine which users and groups can view which records
_____________________