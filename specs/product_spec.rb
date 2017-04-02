require_relative 'spec_helper'

describe "GroceryStoreSystem::Product" do

  let(:new_product) {GroceryStoreSystem::Product.new({store_id: 12345, product_id: 101, product_name: 'cookies', product_price: 15.0, product_aisle: 'bakery', product_quantity: 123, discount_price: 4.5, discounted: true})}
  let(:new_product2) {GroceryStoreSystem::Product.new({store_id: 12345, product_id: 102, product_name: 'Orange', product_price: 14.0, product_aisle: 'Fruits', product_quantity: 123, discount_price: 6.5, discounted: false})}

  describe "#initialize" do
    it "must be an instance Product class" do
      new_product.must_be_instance_of GroceryStoreSystem::Product
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
    it "takes a float for discount_price" do
      new_product.discount_price.must_be_instance_of Float
    end

    it "takes true or false for discounted" do
      new_product.discounted.must_be_instance_of TrueClass || FalseClass
    end
  end

  describe "self.all" do
    it "outputs an array of all products" do

      products_array = GroceryStoreSystem::Product.all
      products_array.must_be_instance_of Array

      products_array.each do |product|
        product.class.must_equal GroceryStoreSystem::Product
      end

      products_array.length.must_equal(27)

      products_array[0].product_id.must_equal(1) # checking first element of array
      products_array[0].product_name.must_equal('Apple')

      products_array[26].product_id.must_equal(27) # checking last element of array
      products_array[26].product_name.must_equal('Gardenia')
    end
  end

  describe "self.find(product_id)" do
    it "returns an instance of an existing product when given a correct product_id" do
      GroceryStoreSystem::Product.find(15).wont_be_nil
    end

    it "can find the last product from the csv" do
      GroceryStoreSystem::Product.find(27).wont_be_nil
    end

    it "if product_id does not exist returns nil" do
      GroceryStoreSystem::Product.find(99).must_be_nil
    end
  end
  #not sure what other tests I could add for methods below, please advise when giving feedback. Thanks!
  describe "discounted?" do
    it "returns discount_price if product is discounted" do
      new_product.discounted?.must_equal(4.5)
    end
  end

  describe "current_price" do
    it "returns product_price if product is not discounted" do
      new_product2.current_price.must_equal(14.0)
    end
  end
end
