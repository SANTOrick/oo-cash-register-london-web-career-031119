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
  quantity.times {@basket.push title}
  return total_temp

end

def apply_discount
  temp_tot = @total
  temp_tot / 100
  temp_tot * 20
  @total -= temp_tot
  return @total
end

def items
  return @basket

end
end
