class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.references :organization, foreign_key: true
      t.references :department, foreign_key: true
      t.string :full_name
      t.string :dob
      t.string :job_title
      t.string :status

      t.timestamps
    end
  end
end
