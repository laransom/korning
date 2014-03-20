class AddEmailToCustomerTable < ActiveRecord::Migration
  def change
    add_column :customers, :url, :string

    Customer.reset_column_information
    Customer.find_each do |customer|
      if customer.name == 'Motorola'
        customer.url = 'http://www.motorola.com'
      elsif customer.name == 'LG'
        customer.url = 'http://www.lg.com'
      elsif customer.name == 'HTC'
        customer.url = 'http://www.htc.com'
      elsif customer.name == 'Nokia'
        customer.url = 'http://www.nokia.com'
      elsif customer.name == 'Samsung'
        customer.url = 'http://www.samsung.com'
      elsif customer.name == 'Apple'
        customer.url = 'http://www.apple.com'
      end
      customer.save
    end
  end
end
