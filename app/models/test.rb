class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :user_tests
  has_and_belongs_to_many :users, through: :user_tests

  def self.sort_tests(category)
    joins(:category).where(categories: { title: category }).order(title: :DESC).pluck('tests.title')
  end
end
