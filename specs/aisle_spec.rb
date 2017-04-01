require_relative 'spec_helper'

describe "GroceryStore::Store" do

  describe "find_all_products_in_aisle" do
    it "returns products that only a specific aisle has" do
    product_aisle = 'Miscellaneous'
    aisle_products[0].product_id.must_equal(17)
  end
  end

  # it "returns an array with the correct number of products for any given aisle" do
  #
  # end
end
