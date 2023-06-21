# frozen_string_literal: true

class Test < ApplicationRecord
  def self.sorted_test_titles_by_category_name(category_name)
    where(category_id: Category.select(:id).where(title: category_name))
      .order(title: :desc)
      .pluck(:title)
  end
end
