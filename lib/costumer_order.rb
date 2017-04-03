module GroceryStore
  class CostumerOrder
    attr_accessor :costumer_products
    def initialize(product_ids)
      @costumer_products = prod_ids.map { |id| Product.find(id)}
    end

    def costumer_total
      #takes list of product_ids and returns total product_price
      @costumer_products.reduce{ |instance| instance.discounted? }
    end
  end
end
