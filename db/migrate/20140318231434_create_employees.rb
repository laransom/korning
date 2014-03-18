class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false

      t.timestamps
    end

    Sale.find_each do |sale|
      data = sale.employee.gsub('(', '').gsub(')', '').split
      unless Employee.exists?(email: data[2])
        Employee.create(first_name: data[0], last_name: data[1], email: data[2])
      end
    end
  end
end
