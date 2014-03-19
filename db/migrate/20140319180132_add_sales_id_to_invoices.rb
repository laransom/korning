class AddSalesIdToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :sale_id, :integer

    Invoice.reset_column_information
    Invoice.find_each do |invoice|
      sale = Sale.find_by(invoice_id: invoice.id)
      invoice.sale_id = sale.id
      invoice.save
    end
  end
end

