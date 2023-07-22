# frozen_string_literal: true

class User < ApplicationRecord
  has_many :tests, foreign_key: 'author_id', dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :completed_tests, through: :results, source: :test

  validates :email, presence: true
  
  def tests_at_difficulty_level(level)
    Test.joins(:results)
        .where(results: { user_id: id }, level: level)
  end
end
