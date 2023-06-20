# frozen_string_literal: true

class Test < ApplicationRecord
  def self.sorted_test_titles_by_category_id(category_id)
    where(category_id: category_id).order(title: :desc).pluck(:title)
  end
end
