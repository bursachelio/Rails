# frozen_string_literal: true

class Test < ApplicationRecord
  def self.sorted_tests_by_category(category_name)
    joins(:category).where(categories: { title: category_name }).order(title: :desc).pluck(:title)
  end
end
