require 'csv'
require 'pry'

module GroceryStoreSystem

  class Product
    attr_accessor :store_id, :product_id, :product_name, :product_price, :product_aisle, :product_quantity, :discount_price, :discounted #allows user to manually set whether item is discounted
    def initialize(product_info)
      @store_id = product_info[:store_id].to_i
      @product_id = product_info[:product_id].to_i
      @product_name = product_info[:product_name]
      @product_price = product_info[:product_price].to_f
      @product_aisle = product_info[:product_aisle]
      @product_quantity = product_info[:product_quantity].to_i
      @discount_price = product_info[:discount_price]
      @discounted = product_info[:discounted]
    end

    def self.all
      @products = []
      CSV.foreach("support/product.csv", {:headers => true}) do |line|
        @products << self.new({store_id:line[0], product_id:line[1], product_name:line[2], product_price:line[3], product_aisle:line[4], product_quantity:line[5], discount_price:line[6], discounted:line[7]})
      end
      return @products
    end

    def self.find(product_id)
      products_by_id = Product.all
      return products_by_id.find {|product| product.product_id == product_id}
    end

    def find_product_by_name(product_name)
      products_by_name = Product.all
      return products_by_name.find {|product| product.product_name == product_name}
    end

    def find_all_products_in_aisle(aisle_name)
      @products_in_aisle = []
      if 

    def discounted?
      if @discounted == true
        return @discount_price
      end
    end
     binding.pry
    def current_price
      if !discounted?
        return @product_price
      end
    end
  end
end
