# frozen_string_literal: true

class User < ApplicationRecord
  def tests_by_difficulty(level)
    tests.where(tests: { level: level })
  end
end
