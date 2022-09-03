require 'pry'

class CashRegister
  attr_reader :discount
  attr_accessor :total, :items, :last_price
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last_price = 0
  end
    def add_item(title, price, amount = 1)
      @total += price * amount
        amount.times do 
        self.items << title
        end
      self.last_price = price * amount
    end
    def apply_discount
      if discount > 0
      my_discount = @total * discount/100
      @total = @total - my_discount
      "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
      end
    end
    
    def void_last_transaction
      self.total = self.total - self.last_price
    end
    





end

binding.pry