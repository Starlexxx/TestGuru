class User < ApplicationRecord
  has_secure_password
  has_many :user_tests
  has_and_belongs_to_many :tests, through: :user_tests

  def tests_by_level(level)
    UserTest.where(user_id: id).joins(:test).where('tests.level = ?', level).pluck(:title)
  end
end
