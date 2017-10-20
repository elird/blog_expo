class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :titulo
      t.text :descrip
      t.integer :estago

      t.timestamps null: false
    end
  end
end
