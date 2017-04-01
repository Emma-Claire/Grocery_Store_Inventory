require 'csv'
module GroceryStore

  class Aisle
    attr_accessor :name, :products, :product_aisle
    def initialize(name)
      @name = name
      @products = nil
      @product_aisle = product_aisle

    end

    def update_quantity_of_purchased_products
      #calls on costumer_order method .each product_quantity do -1
    end

    def find_aisle(product_id)
    end

    def find_products(product_aisle)
      products = Product.all
      @aisle_products = []
      if products.find {|product| product.product_aisle == product_aisle}
        @aisle_products << product
        return @aisle_products
      end

    end
  end
end

  # store a collection of products

  #----csv file


  # find products in a specific aisle
  # given a customer order (list of product IDs), be able to
  # calculate the total price of the order
  # calculate the total savings
