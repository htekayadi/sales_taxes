require 'csv'
require './lib/utils'

class OrderExporterService

  def self.to_csv(order)
    attributes = %w{quantity product_name total_price}

    content = CSV.generate(headers: true) do |csv|
      csv << attributes

      order.orderlines.each do |orderline|
        total_price = "#{'%.2f' % orderline.total_price}"
        csv << [orderline.quantity, orderline.product_name, total_price]

        puts "#{orderline.quantity}, #{orderline.product_name}, #{'%.2f' % orderline.total_price}"
      end

      total_taxes_text = "Sales Taxes: #{'%.2f' % order.total_taxes}"
      total_price_text = "Total: #{'%.2f' % order.total_price}"
      csv << []
      csv << [total_taxes_text]
      csv << [total_price_text]

      puts "\n"
      puts total_taxes_text
      puts total_price_text
    end

    file_name = Utils.sanitize_filename("sales_taxes_#{Time.now.to_s}.csv")

    File.open("tmp/#{file_name}", 'w') { |f| f.write(content) }
  end
end