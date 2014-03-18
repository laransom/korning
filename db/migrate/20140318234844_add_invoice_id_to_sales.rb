class AddInvoiceIdToSales < ActiveRecord::Migration
  def change
    add_column :sales, :invoice_id, :integer

    Sale.reset_column_information
    Sale.find_each do |sale|
      invoice = Invoice.find_by(invoice_no: sale.invoice_no)
      sale.invoice_id = invoice.id
      sale.save
    end
  end
end
