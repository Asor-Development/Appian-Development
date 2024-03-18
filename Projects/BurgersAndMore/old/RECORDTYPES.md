# Record Types

### ATF_Category  
|    Name          |   DataType    |
| ---------------- | ------------- |
|  **id**          | `Integer: PK` |
| **categoryName** | `String`      |


### ATF_Size

|    Name          |   DataType    |
| ---------------- | ------------- |
| **id**           | `Integer: PK` |
| **size**         | `String`      |


### ATF_Item

|    Name          |   DataType    |
| ---------------- | ------------- |
| **id**           |  `Integer: PK`|
| **name**         |  `String`     |
| **price**        |  `Decimal`    |
| **description**  |  `String`     |
| **image**        |  `Integer`    |
| **categoryId**   |  `Integer: FK`|

### BAM_ItemSize
- Many to Many 
- Join Table for Item and Sizes
|    Name          |   DataType    |
| ---------------- | ------------- |
| **id**           |  `Integer: PK`|
| **itemId**       |  `Integer: FK`|
| **sizeId**       |  `Integer: FK`|

---


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

_________________________________