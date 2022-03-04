class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :difficult, -> { where(level: 5..Float::INFINITY) }
  scope :by_category, lambda { |category|
                        joins(:category).where(categories: { title: category })
                      }

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  def self.sort_by_category(category)
    by_category(category).order(title: :desc).pluck(:title)
  end
end
