require 'csv'
module GroceryStore

  class Aisle
    attr_accessor :product_id, :product_name, :aisle_id, :aisle_name, :product_quantity
    attr_reader :store_id
    def initialize(aisle_info)
      @store_id = aisle_info[:store_id]
      @product_id = aisle_info[:product_id]
      @product_name = aisle_info[:product_name]
      @aisle_id = aisle_info[:aisle_id]
      @aisle_name = aisle_info[:aisle_name]
      @product_quantity = aisle_info[:product_quantity]

    end

    def update_quantity_of_purchased_products
      #calls on costumer_order method .each product_quantity do -1
    end

    def find_aisle(product_id)
    end

    def find_products(product_aisle)

    end
  end
end

  # store a collection of products

  #----csv file


  # find products in a specific aisle
  # given a customer order (list of product IDs), be able to
  # calculate the total price of the order
  # calculate the total savings
