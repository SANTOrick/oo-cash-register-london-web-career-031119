class CashRegister
attr_accessor :total, :basket
attr_reader
attr_writer :discount


def initialize(total = 0, discount = 0)
  @total = total
  @basket = []
  @discount = discount
end

def total
  @total
end

def add_item (title, price, quantity = 1)
  total_temp = 0
  real_price = price * quantity
  total_temp += real_price
  @total += total_temp
  until (i = quantity ; i --) do
    @basket.push title
    quantity - 1
  end
  return total_temp

end

def apply_discount (title, price)
  tot_not_disc = add_item(title, price)
  tot_not_disc
  @total
end

def items
  return @basket

end
end
