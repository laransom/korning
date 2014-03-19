class MakeColumnsNull < ActiveRecord::Migration
  def up
    change_table :sales, :sale_date, :date, null: false
    change_table :sales, :sale_amount, :numeric, null: false
    change_table :sales, :units_sold, :integer, null: false
    change_table :sales, :product_id, :integer,  null: false
    change_table :sales, :customer_id, :integer,  null: false
    change_table :invoices, :sale_id, :integer, null: false
  end

  def down
    change_table :sales, :sale_date, :date, null: false
    change_table :sales, :sale_amount, :numeric, null: false
    change_table :sales, :units_sold, :integer, null: false
    change_table :sales, :product_id, :integer,  null: false
    change_table :sales, :customer_id, :integer,  null: false
    change_table :invoices, :sale_id, :integer, null: false
  end
end
