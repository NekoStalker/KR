class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.text :mark, null: false
      t.text :class_c, null: false
      t.text :license_plate, null: false
      t.index :license_plate, unique: true
      t.text :color, null: false
      t.integer :year_of_issue, null: false
      t.references :driver1, foreign_key: true

      t.timestamps
    end
  end
end
