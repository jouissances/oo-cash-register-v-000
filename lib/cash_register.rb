class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :list

  LIST = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    LIST.fill(title, LIST.size, quantity)
  end
  
  def apply_discount
    if discount != 0
      paid_percentage = ((100 - @discount).to_f)/100
      @total = (@total * paid_percentage).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    LIST
  end
end
