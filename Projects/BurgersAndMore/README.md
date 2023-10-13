# Burgers And More

## Customer Site

## Record Types

|       ATF_Category        |
| ------------------------- |
| **id:** `Integer: PK`     |
| **categoryName:** `String`|


|        ATF_Size           |
| ---------------------     |
| **id:** `Integer: PK`     |
| **size:** `String`        |


|         ATF_Item             |
| ---------------------------- |
| **id:** `Integer: PK`        |
| **name:** `String`           |
| **price:** `Decimal`         |
| **description:** `String`    |
| **image:** `Integer`         |
| **sizeId:** `Interger: FK`   |
| **categoryId:** `Integer: FK`|

|      ATF_Order              |
| --------------------------- |
| **id:** `Integer: PK`       |
| **customerName:** `String`  |
| **orderTotal:** `Integer`   |
| **orderStatus:** `String`   |
| **numberofItems:** `Integer`|


**Many to many Relationship**

|      ATF_OrderItem          |
| --------------------------- |
| **id:** `Integer: PK`       |
| **orderId:** `Integer: FK`  |
| **itemId:** `Integer: FK`   |

- from the Order record type add a one to many relationship with OrderItem
- from the Item record type add a one to many relationship with OrderItem
- allows you to index into the related record types

_________________________________

## Interfaces
- `BAM_LandingPage`
    - columsLayout with two columns that each contain a billboardLayout
    - the first column billboardLayout contains a `Place Order` button created with a card layout
        - cardLayout contains a linkField component, that uses the startProcessLink function to start the process of placing an order
        - when the button is clicked the process start by navigating you to the menu
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