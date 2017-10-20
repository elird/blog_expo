class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :titulo
      t.integer :estado

      t.timestamps null: false
    end
  end
end
