module GroceryStore

  class Product
    attr_accessor :product_id, :product_name, :product_price, :product_aisle, :product_quantity
    def initialize(product_info)
      @product_id = product_info[:product_id]
      @product_name = product_info[:product_name]
      @product_price = product_info[:product_price]
      @product_aisle = product_info[:product_aisle]
      @product_quantity = product_info[:product_quantity]
      @discount_price = product_info[:discount]
    end

    def self.all
      #outputs list of all products and info
    end

    def self.find(product_name)
      #finds a product by name
    end

    def final_price
      #is it on sale? if discount_price != nill then product_price = discount_price
    end


  end
end
