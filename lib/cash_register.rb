require 'pry'


class CashRegister
    attr_accessor :total, :discount

def initialize(discount=0)
    @total = 0
    @discount = discount
    @cart = []
    @new_array = []

def add_item(title, price, quantity=1)
#   cart = {}
#   cart[:title] = title
#   cart[:price] = price
#   cart[:quantity] = quantity
    @price = price
    @title = title
    @quantity = quantity
    quantity > 1 ? self.total += quantity * price : self.total += price
    

  quantity.times{ @new_array << title}
end

def apply_discount
  if self.discount == 0
    return "There is no discount to apply."
  else 
    self.total -= self.total * discount / 100
    return "After the discount, the total comes to $#{self.total.to_i}."
  end
end

def items
        @new_array
end
end

def void_last_transaction
self.total -= @price * @quantity
end

end
