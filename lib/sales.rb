module GroceryStore
  class Sales

    def initialize
      @sale_id = sale_id
      @sale_date = DateTime
    end

    def self.all
    end

    def self.all(sale_date)
    end

    def self.find(sale_id)
    end

    def costumer_order
    end

    def costumer_total
      #takes list of product_ids and returns total product_price
    end

    def costumer_savings
      #costumer_total - discount_price, undiscounted products must be nill
    end
  end
end
