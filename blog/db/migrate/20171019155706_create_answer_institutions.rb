class CreateAnswerInstitutions < ActiveRecord::Migration
  def change
    create_table :answer_institutions do |t|
      t.references :answer, index: true, foreign_key: true
      t.references :institution, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
