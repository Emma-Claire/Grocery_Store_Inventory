
module GroceryStore

  class Store
    attr_accessor :name, :products
    def initialize(name)
      @name = name
      @products = nil
      @number_of_aisles = 10

    end

    def update_quantity_of_purchased_products
  #calls on costumer_order method .each product_quantity do -1
    end

    def find_aisle(product_id)
    end

    def find_all_products_in_aisle(product_aisle)
      #array of products which all have the same aisle_name
    end

  end
end


# store a collection of products

#----csv file


# keep track of which aisle each product is in
# find products in a specific aisle
# allow you to add new products
# given a customer order (list of product IDs), be able to
# calculate the total price of the order
# calculate the total savings
