class RemoveEmployeesStringFromOrganizations < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :employees
  end
end
