require 'csv'
module GroceryStoreSystem
  class MyGroceryStore
    attr_accessor :new_aisles, :new_products
    attr_reader :store_id, :store_name
    def initialize (store_id, store_name)
      @store_id = store_id
      @store_name = store_name
      @new_aisles = []
      @new_products = []
    end

    def add_aisle
      @aisle = GroceryStoreSystem::Aisle.new(aisle_info)
      @new_aisles << @aisle
      return @new_aisles
    end

    def add_product
      @product = GroceryStoreSystem::Product.new(product_info)
      @new_products << @product
      return @new_products
    end
  end
end
