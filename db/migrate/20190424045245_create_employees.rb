class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :dob
      t.string :job_title
      t.string :organization
      t.string :department
      t.string :status

      t.timestamps
    end
  end
end
