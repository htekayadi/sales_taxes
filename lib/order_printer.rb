require_relative './services/order_exporter_service'

class OrderPrinter
  def self.call(order:)
    new(order).call
  end

  attr_reader :order

  def initialize(order)
    @order = order
  end

  def call
    OrderExporterService.to_csv(order)
  end

end