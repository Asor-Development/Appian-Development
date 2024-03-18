# Burgers And More: Customer Site


## Site Interfaces 
- `BAM_LandingPage`
    - when the button is clicked the process start by navigating you to the `BAM_OrderMilestone`
- `BAM_OrderMilestone`
    - `BAM_PlaceOrderHeader`
    - **Step 1**
        - `BAM_Menu`
            - `BAM_MenuNavigationList`
                - Contains no Interfaces
            - `BAM_MenuItemsList`
                - `ATF_CategoryItemsList`
                    - Contains no Interfaces
        - `BAM_Cart`
            - Contains no Interfaces




## `BAM_LandingPage`
- **Rule Inputs:**
- **Local variables:**
- columsLayout with two columns that each contain a billboardLayout
- the first column billboardLayout contains a `Place Order` button created with a card layout
- cardLayout contains a linkField component, display as a button, that uses the startProcessLink function to start the process of placing an order by opening the `BAM_OrderMilestone`

## `BAM_OrderMilestone`
- **Rule Inputs:** `cart`, `cancel`, `order`, `orderitems`
- **Local variables:** `local!milestoneBarSteps`, `local!currentMilestoneBarStep`
- **Interface:** `BAM_PlaceOrderHeader` is used as the header for the order page
- uses a milestone component to display each step in the ordering process
- **Step 1: Create Order** uses a column layout with two columns
    - **Column One**
        - `BAM_Menu` contains Menu Navigation List and Menu Items List for each category
        - when a ctegory is selected, all items belonging to that category displays
        - takes the `cart` rule input, which allows items to be added to the cart
    - **Column Two**
        - `BAM_Cart` contains a list of items placed into the cart
        - takes three values
            - rule input `cart`
            - local variable `local!milestoneBarSteps`
            - local variable `local!currentMilestoneBarStep`  
    - **Step 2: Review Cart** 
        - **Column One**
            - `BAM_ReviewCart`
        - **Column Two**
            - `BAM_Cart` contains a list of items placed into the cart
            - takes three values
                - rule input `cart`
                - local variable `local!milestoneBarSteps`
                - local variable `local!currentMilestoneBarStep` 
            
    - **Step 3: Provide Payment** uses


## `BAM_Menu`
- **Rule Inputs:** `cart`
- **Local variables:** `local!activeCategory`, `local!categoryListNav`
- `local!activeCategory` is used to hold the active category
- `local!categoryListNav` is used to hold 
    - **Expression Rule:** `BAM_NavigationList`
        - return a list of navigation items containing all category name
- **Interface:** `BAM_MenuNavigationList`, navigation containing all categories
- **Interface:** `BAM_MenuItemsList`, a list of items for the specified category


## `BAM_MenuNavigationList`
- **Rule Inputs:** `activeCategory`, `categoryListNav`
- uses a the forEach function to display navigation containing all categories


## `BAM_MenuItemsList`
- **Rule Inputs:** `activeCategory`, `categoryListNav`, `cart`
- uses the match function to return a list of items for the specified category
    - value is **Rule Input:** `activeCategory`
    - whenTrue: `activeCategory` is null or empty
    - then: a text field("Please enter a integer for active category section")
    - default: uses the choose function to display the appropiate items list using the `ATF_CategoryItemsList`



## `ATF_CategoryItemsList`
- **Rule Inputs:** `categoryId`, `cart`
- **Local variables:** `local!items`
- **Expression Rule:** `ATF_ItemsList`
    - stored in `local!items`
    - takes a categoryID and returns all the items within that category
- the match function is used to handle what happens when `local!items` is null/empty and when it has avalue
    - value is `local!items`
    - whenTrue: `local!items` is null or empty
    - then: a text field("There are not items for this Category")
    - whenTrue: `local!items` has a value
    - then: a forEach function is used to display each item in `local!items`


## `BAM_Cart`
- **Rule Inputs:** 
    - `cart` used to hold items placed in the cart
    - `currentMilestoneBarStep` used to hold the current step in the process
    - `milestoneBarStep`
- **Local variables:** 
    - local!milestoneBarSteps: contains a list of the names of each step in the process
    - local!currentMilestoneBarStep: contains the index of the current step
    - local!cart: holds all item placed in cart
- **Button:** when items are added to the cart a button appears
    - the label on the buttonn depends on the `currentMilestoneBarStep`, which is passed into
        - **Expression Rule:** `BAM_CartButton`, takes an integer and returns text that will display on button


## `BAM_ReviewCart`
- **Rule Input:**`cartContents`
- displays all the items in the cart in a list


## `BAM_ProcessCreditCardPaymentUsingExternalSystem`
- **Rule Inputs:** `cart`, `currentMilestoneBarStep`, `milestoneBarSteps`, `status`, `numberOfItems`, `orderTotal`, `customerName`, `orderItemsInfo`
- **Expression Rule:** `rule!BAM_AddOrderandOrderItems()`
    - Nested order record type constructor that adds multiple items to the related record orderItems

## Process Model: BAM Place Order

