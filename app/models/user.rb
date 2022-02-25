class User < ApplicationRecord
  has_secure_password
  has_many :tests_users
  has_and_belongs_to_many :tests, through: :tests_users

  def tests_by_level(level)
    tests.where(level: level)
  end
end
