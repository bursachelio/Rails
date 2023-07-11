# frozen_string_literal: true

class Test < ApplicationRecord
  def self.sorted_test_titles_by_category_name(category_name)
    joins('JOIN categories ON categories.id = tests.category_id')
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
