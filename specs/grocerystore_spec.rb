require_relative 'spec_helper'

describe "GroceryStoreSystem::MyGroceryStore" do

  describe "#initialize" do
    it "must be an instance of MyGroceryStore class" do
      GroceryStoreSystem::MyGroceryStore.new(99854, "mystore").must_be_instance_of GroceryStoreSystem::MyGroceryStore
    end

    it "takes an integer for store_id" do
      GroceryStoreSystem::MyGroceryStore.new(94521, "someotherstore").store_id.must_be_kind_of Integer
    end
    it "takes an interger for store_name" do
      GroceryStoreSystem::MyGroceryStore.new(87634, "anotherone").store_name.must_be_instance_of String
    end
  end

  describe "add_aisle"do
end
