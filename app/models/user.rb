# frozen_string_literal: true

class User < ApplicationRecord
  has_many :tests, foreign_key: 'author_id'
  def tests_at_difficulty_level(level)
    Test.joins('INNER JOIN results ON results.test_id = tests.id')
        .where(results: { user_id: id }, level: level)
  end
end
