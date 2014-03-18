class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :invoice_no, null: false
      t.string :invoice_frequency, null: false

      t.timestamps
    end

    Sale.find_each do |sale|
      unless Invoice.exists?(invoice_no: sale.invoice_no)
        Invoice.create(invoice_no: sale.invoice_no, invoice_frequency: sale.invoice_frequency)
      end
    end
  end
end
