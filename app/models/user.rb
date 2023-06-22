# frozen_string_literal: true

class User < ApplicationRecord
  def tests_at_difficulty_level(level)
    Test.joins("INNER JOIN users ON users.id = tests.user_id")
        .where("users.id = ? AND tests.level = ?", id, level)
  end
end
