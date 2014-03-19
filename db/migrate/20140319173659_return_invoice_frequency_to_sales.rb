class ReturnInvoiceFrequencyToSales < ActiveRecord::Migration
  def change
    add_column :sales, :invoice_frequency, :string

    Sale.reset_column_information
    Sale.find_each do |sale|
      invoice = Invoice.find_by(id: sale.invoice_id)
      sale.invoice_frequency = invoice.invoice_frequency
      sale.save
    end
  end
end
