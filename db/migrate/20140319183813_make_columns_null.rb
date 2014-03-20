class MakeColumnsNull < ActiveRecord::Migration
  def up
    change_column :sales, :sale_date, :date, null: false
    change_column :sales, :sale_amount, :numeric, null: false
    change_column :sales, :units_sold, :integer, null: false
    change_column :sales, :product_id, :integer, null: false
    change_column :sales, :customer_id, :integer, null: false
    change_column :invoices, :sale_id, :integer, null: false
  end

  def down
    change_column :sales, :sale_date, :date, null: true
    change_column :sales, :sale_amount, :numeric, null: true
    change_column :sales, :units_sold, :integer, null: true
    change_column :sales, :product_id, :integer, null: true
    change_column :sales, :customer_id, :integer, null: true
    change_column :invoices, :sale_id, :integer, null: true
  end
end
