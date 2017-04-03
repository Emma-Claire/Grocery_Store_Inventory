# require 'product'
# require 'costumer_order'
# require 'grocerystore'
# require 'aisle'
#need to ask tutor about how to access other lib files from main

#app
#greets User
puts "Welcome to your inventory system"

inventory = GroceryStoreSystem::Product.all
puts inventory
#outputs product.csv
#allows user to input CostumerOrder(list of ids) and outputs total and savings
