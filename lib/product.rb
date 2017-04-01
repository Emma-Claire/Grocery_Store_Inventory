require 'pry'
require 'csv'

module GroceryStore

  class Product
    attr_accessor :store_id, :product_id, :product_name, :product_price, :product_aisle, :product_quantity
    def initialize(product_info)
      @store_id = product_info[:store_id].to_i
      @product_id = product_info[:product_id].to_i
      @product_name = product_info[:product_name]
      @product_price = product_info[:product_price].to_f
      @product_aisle = product_info[:product_aisle]
      @product_quantity = product_info[:product_quantity].to_i
    end

    def self.all
      @products = []
      CSV.foreach("support/product.csv", {:headers => true}) do |line|
        @products << self.new({store_id:line[0], product_id:line[1], product_name:line[2], product_price:line[3], product_aisle:line[4], product_quantity:line[5]})
      end
      return @products
    end
    # binding.pry

    def self.find(product_id)
      #finds a product
      # should retunr instance od Product
    end

    def final_price
      #is it on sale? if discount_price != nill then product_price = discount_price
    end
  end
end
