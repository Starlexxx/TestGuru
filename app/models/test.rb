class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :tests_users
  has_and_belongs_to_many :users, through: :tests_users

  def self.sort_tests(category)
    joins(:category).where(categories: { title: category }).order(title: :DESC).pluck('tests.title')
  end
end
