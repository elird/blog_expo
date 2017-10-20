class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :nombre
      t.string :direccion
      t.string :ciudad
      t.string :telf
      t.string :celular
      t.float :latitud
      t.float :longitud
      t.integer :estado

      t.timestamps null: false
    end
  end
end
