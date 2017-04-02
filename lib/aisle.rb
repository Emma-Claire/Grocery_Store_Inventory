require 'csv'

module GroceryStoreSystem
  class Aisle
    attr_accessor :product_id, :product_name, :aisle_id, :aisle_name, :product_quantity
    attr_reader :store_id

    def initialize(aisle_info)
      @store_id = aisle_info[:store_id].to_i
      @product_id = aisle_info[:product_id].to_i
      @product_name = aisle_info[:product_name].to_s
      @aisle_id = aisle_info[:aisle_id].to_s
      @aisle_name = aisle_info[:aisle_name].to_s
      @product_quantity = aisle_info[:product_quantity].to_i

    end

    # def self.all
    #   #returns all aisles
    #   @aisles_info = []
    #   CSV.foreach("support/aisle.csv", {:headers => true}) do |line|
    #     @aisles_info << self.new({store_id:line[0], product_id:line[1], product_name:line[2], aisle_id:line[3], aisle_name:line[4], product_quantity:line[5]})
    #   end
    #   return @aisles_info
    # end
    #
    # def self.find(product_name)
    #   #returns aisle given a product_id
    # end
    #
    # def find_products(aisle_name)
    #   #returns all products with same aisle name
    # end
    #
    # def update_quantity_of_purchased_products
    #   #calls on costumer_order method .each product_quantity do -1
    # end
  end
end

# store a collection of products

#----csv file


# find products in a specific aisle
# given a customer order (list of product IDs), be able to
# calculate the total price of the order
# calculate the total savings
