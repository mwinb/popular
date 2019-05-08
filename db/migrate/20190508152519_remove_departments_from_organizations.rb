class RemoveDepartmentsFromOrganizations < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :departments
  end
end
