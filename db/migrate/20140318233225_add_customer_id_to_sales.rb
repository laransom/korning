class AddCustomerIdToSales < ActiveRecord::Migration
  def change
    add_column :sales, :customer_id, :integer

    Sale.reset_column_information
    Sale.find_each do |sale|
      customer = Customer.find_by(account_no: sale.customer_and_account_no.gsub('(', '').gsub(')', '').split[1])
      sale.customer_id = customer.id
      sale.save
    end
  end
end
