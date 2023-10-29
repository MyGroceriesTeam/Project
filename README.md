#Original App Design Project - README Template
===

# MyGroceries

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview
MyGroceries is your ultimate grocery shopping companion, designed to make your shopping experience easier, more organized, and efficient. Say goodbye to forgotten items and wasted trips to the store. With MyGroceries, you can plan your shopping ahead, track your purchases, and always know what you need.

Key Features:
-	Smart Shopping Lists: Create and manage your shopping lists effortlessly. Input the products you need, and specify the purchase date. MyGroceries intelligently organizes your items based on their purchase date, ensuring you prioritize items that need replenishing soon.
-	Inventory Tracking: Keep a digital inventory of your pantry and refrigerator. As you use or purchase items, simply mark them as "Used" or "Bought" to maintain an up-to-date inventory. The app will keep track of when you last bought an item and when it's due for replenishment.
-	User-Friendly Design: MyGroceries features a simple and intuitive user interface that makes creating and managing lists a breeze.

Why MyGroceries?
●	Save Time: Avoid last-minute trips to the store by knowing exactly when you need to restock your essentials.
●	Reduce Waste: Minimize food waste by tracking the freshness of your groceries and using items before they expire.
●	Stay Organized: Keep your pantry and shopping lists well-organized, ensuring a smooth shopping experience every time.

MyGroceries is designed to help users manage their groceries and make shopping a breeze while reducing food waste and saving money. It's the perfect tool for anyone who wants to take control of their grocery shopping and meal planning.

### App Evaluation

[Evaluation of your app across the following attributes]
- **Category:**
- **Mobile:**
- **Story:**
- **Market:**
- **Habit:**
- **Scope:**

## Product Spec
### 1. User Stories (Required and Optional)
**Required Must-have Stories**
* User can see a list of their grocery contents with expire date, purchase date, name and an image
* User can set a date purchased and expiration date if needed
* User can login to an account
* User can create a new acccount
* User recieves a notifcation for when something is about to expire
* User can upload a picture of the item
* User can see list of categories of groceries ie fruits and vegatables are listed in their own seperate tab
* User can designate a type like dry good, fruit, dairy, etc
* User can delete entries
* user can see days left on an item, change image, or add notes

**Optional Nice-to-have Stories**
* User can see an indicator of when an item is about to expire in app.
* User can modify an exisiting entry
* User can search for an item
* User can use their camera to take a photo and use it for the item
  
### 2. Screen Archetypes
* Login Screen
    * User can login 
* Registration
    * User can Create an account
* Item list screen
    *  User can see a list of their grocery contents with expire date, purchase date, name and an image
    *  User can see list of categories of groceries ie fruits and vegatables are listed in their own seperate tab
    *  User can see an indicator of when an item is about to expire in app.
    *  User can delete entries
* Item Creation Screen 
    *   User can upload a picture of the item
    *   User can set a date purchased and expiration date if needed
    *   User can designate a type like dry good, fruit, dairy, etc
    *   User can modify an exisiting entry
    *   User can use their camera to take a photo and use it for the item
* Outside app
    * User recieves a notifcation for when something is about to expire
* Alert Page
    *  User recieves a notifcation for when something is about to expire   
* Specific Item Infomation Page
    * user can see days left on an item, change image, or add notes
…
### 3. Navigation
Tab Navigation (Tab to Screen)
* Alert page
* Item list page 
Flow Navigation (Screen to Screen)
* Login Screen
    => Alert Page
* Registration Screen
    => Alert Page
* Item List page
    => Item creation Screen
    => a specific item infomation page
  

**Flow Navigation** (Screen to Screen)
- Login Screen
* SignUp Screen
* Expiration Alert Screen
- Item List Screen
  *Item Creation Screen
  *Item Details Screen
- Categories Screen

## Wireframes
![WhatsApp Image 2023-10-29 at 18 57 54](https://github.com/MyGroceriesTeam/Project/assets/124225302/c97fc885-df86-4d4f-aa7e-6e1a8a605ce3)


## Schema 

[This section will be completed in Unit 9]

### Models

[Add table of models]

### Networking

- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
