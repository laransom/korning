class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :account_no, null: false

      t.timestamps
    end
    Sale.find_each do |sale|
      data = sale.customer_and_account_no.gsub('(', '').gsub(')', '').split
      unless Customer.exists?(account_no: data[1])
        Customer.create(name: data[0], account_no: data[1])
      end
    end
  end
end
