class AddEmployeesRefToOrganizationg < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :organization, foreign_key: true
  end
end
