class AddSalesIdToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :sales_id, :integer

    Inovice.reset_column_information
    Invoice.find_each do |invoice|
      sale = Sale.find_by(invoice_id: invoice.id)
      invoice.sales_id = sale.id
      invoice.save
    end
  end
end

