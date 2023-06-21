# frozen_string_literal: true

class User < ApplicationRecord
  def tests_by_difficulty(level)
    Test.where(user_id: id, level: level).order(title: :asc)
  end
end
