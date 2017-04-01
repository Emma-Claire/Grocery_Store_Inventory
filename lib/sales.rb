module GroceryStore
  class Sale
    def initialize(collection_of_prod_ids)
      @sold_products = collection_of_prod_ids.map { |id| Product.find(id)}
    end

    def costumer_total
      #takes list of product_ids and returns total product_price
      @sold_products.reduce{ |instance| instance.product_price }
    end

    def costumer_savings
      #costumer_total - discount_price, undiscounted sold_products must be nill
    end
  end
end
