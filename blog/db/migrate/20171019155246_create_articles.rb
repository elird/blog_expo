class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titulo
      t.text :contenido
      t.date :fecha
      t.integer :estado
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
