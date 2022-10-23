class CreatePhysicalInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :physical_informations do |t|
      t.integer :age,                        null: false
      t.integer :body_heigth,                null: false
      t.integer :body_weigth,                null: false
      t.integer :basal_metabolism
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
