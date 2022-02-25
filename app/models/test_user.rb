class TestUser < ApplicationRecord
  belongs_to :test
  belongs_to :user

  self.table_name = 'tests_users'
end
