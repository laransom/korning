class RemoveInvoiceFrequencyFromInvoices < ActiveRecord::Migration
  def up
    remove_column :invoices, :invoice_frequency
  end

  def down
    add_column :invoices, :invoice_frequency, :string
  end
end
