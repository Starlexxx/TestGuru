class User < ApplicationRecord
  has_secure_password
  has_many :user_tests
  has_and_belongs_to_many :tests

  def passed_tests(level)
    PassedTest.joins(:test).where(tests: { level: level }).order(title: :DESC).pluck('tests.title')
  end
end
