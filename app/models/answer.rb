# frozen_string_literal: true

class Answer < ApplicationRecord
  
  belongs_to :question

  validates :body, presence: true
  validate :validate_number_of_answers

  default_scope { order(title: :asc) }

  private

  def validate_number_of_answers
    if question.answers.size >= 4
      errors.add(:base, 'A question cannot have more than 4 answers')
    elsif question.answers.size < 1
      errors.add(:base, 'A question must have at least 1 answer')
    end
  end
end
