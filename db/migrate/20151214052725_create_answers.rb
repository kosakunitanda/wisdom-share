class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
      t.index [:question_id, :created_at]
    end
  end
end
