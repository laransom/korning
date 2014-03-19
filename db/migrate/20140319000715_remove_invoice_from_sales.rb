class RemoveInvoiceFromSales < ActiveRecord::Migration
  def up
    remove_column :sales, :invoice_no
    remove_column :sales, :invoice_frequency
  end

  def down
    add_column :sales, :invoice_no, :string
    add_column :sales, :invoice_frequency, :string
  end
end
