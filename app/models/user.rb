class User < ApplicationRecord
    has_many :user_tests
    has_many :tests, through: :user_tests
  
    def tests_by_difficulty(level)
      tests.where(user_tests: { level: level })
    end
  end
  
