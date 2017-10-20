class CreateAnswerQuestions < ActiveRecord::Migration
  def change
    create_table :answer_questions do |t|
      t.references :question, index: true, foreign_key: true
      t.references :answer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
