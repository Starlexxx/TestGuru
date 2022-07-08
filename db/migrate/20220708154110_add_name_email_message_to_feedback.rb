class AddNameEmailMessageToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :name, :string
    add_column :feedbacks, :email, :string
    add_column :feedbacks, :message, :string
  end
end
