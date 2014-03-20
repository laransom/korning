class RemoveInvoiceIdFromSales < ActiveRecord::Migration
  def up
    remove_column :sales, :invoice_id
  end

  def down
    add_column :sales, :invoice_id, :integer
  end
end
