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


## Admin Site
### Interfaces
- `ATF_CategoriesPieChart` uses a pie chart to displays the number of items for each category
    - Expression Rule: ATF_ItemsList
        - is passed a categoryId
        - then uses the count function to count the number of items then displays the number in the chart
