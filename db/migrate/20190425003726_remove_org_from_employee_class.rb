class RemoveOrgFromEmployeeClass < ActiveRecord::Migration[5.2]
  def change
    remove_column :Employees, :organization, :string
  end
end
