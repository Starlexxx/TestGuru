class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :body
      t.boolean :is_correct
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
