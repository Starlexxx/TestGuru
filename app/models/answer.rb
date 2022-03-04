class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(is_correct: true) }

  validates :body, presence: true
  validate :validate_max_answers, on: :create

  private

  def validate_max_answers
    errors.add(:answers, 'Max amount of answers is 4!') if question.answers.count > 4
  end
end
