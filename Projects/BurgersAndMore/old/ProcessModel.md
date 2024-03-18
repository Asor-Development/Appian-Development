# Burgers and More: Process Models

## BAM Place Order
- **Process Variables**
        - `cancel`: Boolean
        - `cart`: Map
        - `order`: ATF Order(Record Type)
        - `orderItems`: ATF OrderItem(Record Type)
## Testing
- **Card Number:** `5424000000000015`

#### Contains Six Nodes
- v 12.0 working for order table
- v 23.0 working for everything
    - uses script task and subprocess to pass data to orderItems table
1. **Start Node** Users click the place Order Button to start the process
    - **Process Start Form** `BAM_OrderMilestone` opens and the user completes their order
2. **XOR Gateway**
    - uses the process variable `cancel` to determine which path to take
    - if `cancel` is true **End Node**
    - if `cancel` is false **Write Records**
3. **Write Records** writes the order to the `ATF Order(Record Type)` using the `order` process variable
4. **Script Task** collects the `orderId`
    - uses a forEach function to add the `orderId` to each order Item
5. **Sub Process** asynchronously starts the `BAM Add To Order Item Table`
    - to add items to the `BAM_OrderItem` table
    - uses two input variables
6. **End node**



## BAM Add To Order Item Table
#### Contains Three Nodes
1. **Start Node**
2. **Write Records** writes the order to the `ATF OrderItem(Record Type)` using the `orderItem` process variable
3. **End node**
_________________________________________________

## Final Process Model
**BAM Place Order**

- v 28.0 working for everything
    - uses Write to records smart service to pass data to both order and oreritem table

1. **Start Node** Users click the place Order Button to start the process
    - **Process Start Form** `BAM_OrderMilestone` opens and the user completes their order
2. **XOR Gateway**
    - uses the process variable `cancel` to determine which path to take
    - if `cancel` is true **End Node**
    - if `cancel` is false **Write Records**
3. **Write Records** writes the order to the `ATF Order(Record Type)` and `ATF OrderItem(Record Type)` using the `order` process variable

6. **End node**