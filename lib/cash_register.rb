require 'pry'


class CashRegister
    attr_accessor :total, :discount

def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
    @new_array = []

def add_item(title, price, quantity=1)
  cart = {}
  cart[:title] = title
  cart[:price] = price
  cart[:quantity] = quantity
    
  @cart << cart 
  @total += price * quantity
  @price = price

  quantity.times{ @new_array << title}
end

def apply_discount
  if discount == 0
    return "There is no discount to apply."
  else 
    @total -= @total * discount / 100
    return "After the discount, the total comes to $#{@total}."
  end
end

def items
        @new_array
end
end

def void_last_transaction
@total -= @price
@total 
end

end
