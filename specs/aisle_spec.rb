require_relative 'spec_helper'

describe "GroceryStoreSystem::Aisle" do

  let(:new_aisle) {GroceryStoreSystem::Aisle.new({store_id: 12345, aisle_id: 'B', aisle_name: 'Bakery'})}

  describe "#initialize" do
    it "must be an instance of Aisle class" do
      new_aisle.must_be_instance_of GroceryStoreSystem::Aisle
    end
    it "takes an integer for store_id" do
      new_aisle.store_id.must_be_kind_of Integer
    end

    it "takes a string for aisle_id" do
      new_aisle.aisle_id.must_be_instance_of String
    end
    it "takes a string for aisle_name" do
      new_aisle.aisle_name.must_be_instance_of String
    end
    it "takes a string for aisle_description" do
      new_aisle.aisle_description.must_be_instance_of String
    end
  end

  describe "self.all" do
    it "outputs an array of all aisle and their info" do
      aisles_array = GroceryStoreSystem::Aisle.all
      aisles_array.must_be_instance_of Array

      aisles_array.each do |aisle|
        aisle.class.must_equal GroceryStoreSystem::Aisle
      end

      aisles_array.length.must_equal(10)

      aisles_array[0].aisle_name.must_equal('Fruits') # checking first element of array
      aisles_array[0].aisle_id.must_equal('A')

      aisles_array[9].aisle_name.must_equal('Flowers') # checking last element of array
      aisles_array[9].aisle_id.must_equal('J')
    end
  end

  describe "self.find" do

  end
end
