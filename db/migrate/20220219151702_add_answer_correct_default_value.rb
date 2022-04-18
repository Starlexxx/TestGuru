class AddAnswerCorrectDefaultValue < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:answers, :is_correct, false)
  end
end
