class CreateTestsUsersJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :tests, :users do |t|
      t.index %i[test_id user_id], unique: true
      # t.index [:user_id, :test_id]
    end
  end
end
