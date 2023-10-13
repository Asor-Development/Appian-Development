# ALL THE FOOD

## Record Types


| BAM_Category            |
| ----------------------- |
| **id:** Integer: PK     |
| **categoryName:** String|


|      BAM_Size           |
| -------------------     |
| **id:** Integer: PK     |
| **size:** String        |


|      BAM_Item             |
| ------------------------- |
| **id:** Integer: PK       |
| **name:** String          |
| **price:** Decimal        |
| **description:** String   |
| **image:** Integer        |
| **sizeId:** Interger FK   |
| **categoryId:** Integer FK|

|      BAM_Order              |
| --------------------------- |
| **id:** `Integer: PK`       |
| **customerName:** `String`  |
| **orderTotal:** `Integer`   |
| **orderStatus:** `String`   |
| **numberofItems:** `Integer`|


Many to many Relationship

|      BAM_OrderItem        |
| ------------------------- |
| **id:** `Integer: PK`       |
| **orderId:** `Integer FK`   |
| **itemId:** `Integer FK`    |

- from the Order record type add a one to many relationship with OrderItem
- from the Item record type add a one to many relationship with OrderItem
- allows you to index into the related record types
___________________________________________________________________________

## Admin Site
- displays one interface and three record types as pages
### Interfaces
- `ATF_Inventory`
    - `ATF_CategoriesPieChart` uses a pie chart to displays the number of items for each category
        - Expression Rule: ATF_ItemsList
            - is passed a categoryId
            - then uses the count function to count the number of items then displays the number in the chart
    - `ATF_AdminItemList` uses a read only grid to display items for each category
        - Expression Rule: ATF_ItemsList
            - is passed a categoryId, and displays all items for that category
    
### Record List
- `ATF_Item`
- `ATF_Category`
- `ATF_Size`



# Burger And More

## Customer Site

## Interfaces
- `BAM_Menu`
    - Expression Rule: `BAM_NavigationList`
        - return a list of navigation items containing all category name
        - passed to the `categoryListNav` local variable
    - Interface: `BAM_MenuNavigationList`
        - uses a the forEach function to display navigation containing all categories
        - has two rule inputs `categoryListNav` and `activeCategory`, the values are passed in via local variables `categoryListNav` and `activeCategory`
    - Interface: `BAM_MenuItemsList`
        - uses the match function to return a list of items for the specified category
        - has three rule inputs `categoryListNav` and `activeCategory`, the values are passed in via local variables `categoryListNav` and `activeCategory`
        - the third rule input `cart` gets its value from a rule input