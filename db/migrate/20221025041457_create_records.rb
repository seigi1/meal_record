class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string  :meal_name,    null: false
      t.integer :calorie,      null: false
      t.integer :carbohydrate, null: false
      t.integer :fat,          null: false
      t.integer :protein,      null: false
      t.datetime :meal_time,   null: false
      t.references :user,      foreign_key: true, null: false
      t.timestamps
    end
  end
end
