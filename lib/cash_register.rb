class CashRegister
    attr_accessor :total, :discount, :items, :item_total

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end 

    def add_item(title, amount, quantity = 1)
        self.item_total = amount * quantity
        self.total += self.item_total
        quantity.times do
          self.items << title
        end
      end


    def apply_discount
        if self.discount > 0
            discount_amt = (self.item_total * self.discount / 100)
            self.total = (self.item_total - discount_amt)
            "After the discount, the total comes to $#{self.total}."

        else 
            "There is no discount to apply."
        end 
    end 

    def void_last_transaction 
        self.total -= self.item_total
    end

end 


