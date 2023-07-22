# frozen_string_literal: true

class Answer < ApplicationRecord
  
  belongs_to :question

  validates :body, presence: true
  validate :validate_number_of_answers, on: :create

  private

  def validate_number_of_answers
    if question.answers.count >= 4
      errors.add(:base, 'A question cannot have more than 4 answers')
    end
  end
end
