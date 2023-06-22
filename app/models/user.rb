# frozen_string_literal: true

class User < ApplicationRecord
  def tests_by_difficulty(level)
    tests.joins(:results).where(results: { level: level })
  end
end
