# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :test

  has_many :answers, dependent: :destroy
  
  validate :validate_number_of_answers

  private

  def validate_number_of_answers
    unless answers.size.between?(1, 4)
      errors.add(:answers, 'must have between 1 and 4 answers')
    end
  end
end
