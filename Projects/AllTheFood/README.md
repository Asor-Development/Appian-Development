# ALL THE FOOD
**Application for admins of fast food resturant to manage food item**

## Record Types

- [x] Category
- [x] Size


### ATF_Item

|    Name          |   DataType    |
| ---------------- | ------------- |
| **id**           |  `Integer: PK`|
| **name**         |  `String`     |
| **price**        |  `Decimal`    |
| **description**  |  `String`     |
| **image**        |  `Integer`    |
| **sizeId**       |  `Integer: FK`|
| **categoryId**   |  `Integer: FK`|

### ATF_Order

|    Name           |   DataType     |
| ----------------- | -------------- |
| **id:**           |  `Integer: PK` |
| **customerName:** |  `String`      |
| **orderTotal:**   |  `Integer`     |
| **orderStatus:**  |  `String`      |
| **numberofItems:**| `Integer`      |


**Many to many Relationship**

### ATF_OrderItem

|    Name           |   DataType     |
| ----------------- | -------------- |
| **id:**           | `Integer: PK`  |
| **orderId:**      | `Integer: FK`  |
| **itemId:**       | `Integer: FK`  |

- from the Order record type add a one to many relationship with OrderItem
- from the Item record type add a one to many relationship with OrderItem
- allows you to index into the related record types


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
