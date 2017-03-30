module GroceryStore

  class product
  attr_accessor :product_id, :product_name, :product_price, :product_aisle
    def initialize(product_info)
      @product_id = product_info[:product_id]
      @product_name = product_info[:product_name]
      @product_price = product_info[:product_price]
      @product_aisle = product_info[:product_aisle]
    end

    def self.all
    end

    def self.find(product_name)
    end

    
  end
end
