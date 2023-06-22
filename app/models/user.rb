# frozen_string_literal: true

class User < ApplicationRecord
  def tests_by_difficulty(level)
<<<<<<< HEAD
    tests.joins(:results).where(results: { level: level })
=======
    Test.where(user_id: id, level: level).order(title: :asc)
>>>>>>> f9c5bef30da2e8f636da6260491690f5c333fcd7
  end
end
