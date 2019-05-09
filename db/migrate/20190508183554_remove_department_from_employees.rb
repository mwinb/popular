class RemoveDepartmentFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :department
  end
end
