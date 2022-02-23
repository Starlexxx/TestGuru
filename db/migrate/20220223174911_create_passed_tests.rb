class CreatePassedTests < ActiveRecord::Migration[7.0]
  def change
    create_table :passed_tests do |t|
      t.references :test, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :is_passed

      t.timestamps
    end
  end
end
