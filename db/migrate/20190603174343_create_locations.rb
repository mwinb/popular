class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :organization, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
