# frozen_string_literal: true

class Test < ApplicationRecord
  def self.sorted_test_titles_by_category_title(category_title)
    joins(:category).where(categories: { title: category_title }).order(title: :desc).pluck('tests.title')
  end
end
