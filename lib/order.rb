require_relative './orderline'

class Order
  attr_reader :orderlines

  def initialize
    @orderlines = []
  end

  def add_orderline(data_row)
    @orderlines << Orderline.new(data_row)
  end

  def total_price
    (sub_total + total_taxes).round(2)
  end

  def sub_total
    orderlines.map(&:price).reduce(:+).round(2)
  end

  def total_taxes
    orderlines.map(&:tax).reduce(:+).round(2)
  end
end