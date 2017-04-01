require_relative 'spec_helper'

describe "GroceryStore::Product" do

  let(:new_product) {GroceryStore::Product.new({store_id: 12345, product_id: 101, product_name: 'cookies', product_price: 15.0, product_aisle: 'bakery', product_quantity: 123, discount_price: 0.0})}

  describe "#initialize" do
    it "must be an instance Product class" do
      new_product.must_be_instance_of GroceryStore::Product
    end

    it "takes an integer for store_id" do
      new_product.store_id.must_be_kind_of Integer
    end
    it "takes an interger for product_id" do
      new_product.product_id.must_be_instance_of Integer
    end
    it "takes a string for product_name" do
      new_product.product_name.must_be_instance_of String
    end

    it "takes a float for product_price" do
      new_product.product_price.must_be_instance_of Float
    end
    it "takes a string for product_aisle" do
      new_product.product_aisle.must_be_instance_of String
    end
    it "takes an Integer for product_quantity" do
      new_product.product_quantity.must_be_instance_of Integer
    end
  end

end
