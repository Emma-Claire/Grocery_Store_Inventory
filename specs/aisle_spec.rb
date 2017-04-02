require_relative 'spec_helper'

describe "GroceryStoreSystem::Aisle" do

  let(:new_aisle) {GroceryStoreSystem::Aisle.new({store_id: 12345, product_id: 103, product_name: 'Brownie', aisle_id: 'B', aisle_name: 'Bakery', product_quantity: 123})}

  describe "#initialize" do
    it "must be an instance of Aisle class" do
      new_aisle.must_be_instance_of GroceryStoreSystem::Aisle
    end
    it "takes an integer for store_id" do
      new_aisle.store_id.must_be_kind_of Integer
    end
    it "takes an interger for product_id" do
      new_aisle.product_id.must_be_instance_of Integer
    end
    it "takes a string for product_name" do
      new_aisle.product_name.must_be_instance_of String
    end

    it "takes a string for aisle_id" do
      new_aisle.aisle_id.must_be_instance_of String
    end
    it "takes a string for aisle_name" do
      new_aisle.aisle_name.must_be_instance_of String
    end
    it "takes an Integer for product_quantity" do
      new_aisle.product_quantity.must_be_instance_of Integer
    end

  end
  # it "returns an array with the correct number of products for any given aisle" do
  #
  # end
end
