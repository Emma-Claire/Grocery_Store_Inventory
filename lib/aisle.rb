require 'csv'

module GroceryStoreSystem
  class Aisle
    attr_accessor :aisle_id, :aisle_name, :aisle_description
    attr_reader :store_id

    def initialize(aisle_info)
      @store_id = aisle_info[:store_id].to_i
      @aisle_id = aisle_info[:aisle_id].to_s
      @aisle_name = aisle_info[:aisle_name].to_s
      @aisle_description = aisle_info[:aisle_description].to_s

    end

    def self.all
      #returns all aisles
      @aisles_info = []
      CSV.foreach("support/aisle.csv", {:headers => true}) do |line|
        @aisles_info << self.new({store_id:line[0], aisle_id:line[1], aisle_name:line[2], aisle_description:line[3]})
      end
      return @aisles_info
    end
    #
    def self.find(aisle_id)
      #returns aisle given a product_id
      aisles = Aisle.all
      return aisles.find {|aisle| aisle.aisle_id == aisle_id}
    end

    # def update_quantity_of_purchased_products
    #   #calls on costumer_order method .each product_quantity do -1
    # end
  end
end


# given a customer order (list of product IDs), be able to
# calculate the total price of the order
# calculate the total savings
