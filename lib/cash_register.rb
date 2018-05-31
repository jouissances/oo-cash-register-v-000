class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total = @total + (price*quantity)
  end
  
  def apply_discount
    paid_percentage = ((100 - @discount).to_f)/100
    @total = (@total * paid_percentage).to_i
    "After the discount, the total comes to ${@total}."
  end
end
