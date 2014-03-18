class AddEmployeeIdToSales < ActiveRecord::Migration
  def change
    add_column :sales, :employee_id, :integer

    Sale.reset_column_information
    Sale.find_each do |sale|
      employee = Employee.find_by(email: sale.employee.gsub('(', '').gsub(')', '').split[2])
      sale.employee_id = employee.id
      sale.save
    end
  end
end
