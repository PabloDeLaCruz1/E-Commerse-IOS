# My E-Commerse Solutions 

### E-commerse app that allows for an amazon like experience. All users can add, view, and buy items, but payment processing is centralized to one location. 


## Tab View with four categories:

    1. Categories
        - Can click on a category and it will load all items in that category on a new page
            - Can Click on Item and it takes you to the ItemView
                - AddToBasket button on navbar 
                - If image.count > 1 allow horizontal scroll view 
            - AddItemButton to category
            - if category.items.count == 0, handle with a proper "No Items to Dispaly" view
    2. Search 
        - Can search items by user input.
        - Uses third party solution to help firebase 
    
    3. Basket
        - Shows updated basket
        - Can delete by swipe left and updates view on delete
        - Checkout 
            - Takes you to paypal (wont work on simulator)
    4. Profile
        - Account is Active
            - User needs to confirm email address when registering or cant purchase     
        - Purchase History
            - If user has purchased items, they will be listed here. 
        - Terms & Conditions
        - Edit Profil button on nav bar
            - Can edit user profile 
            - can log out
                - User can no longer see purchase history, if you want to add to basket, will ask to log in
## Models
    1. Categories
    2. Users
    3. Items

## Third Party Support 
    1. Firebase
        - Authentication 
        - Firestore
        - Storage
        
