# frozen_string_literal: true

class Test < ApplicationRecord
<<<<<<< HEAD
  def self.sorted_test_titles_by_category_title(category_title)
    joins(:category).where(categories: { title: category_title }).order(title: :desc).pluck('tests.title')
=======
  def self.sorted_test_titles_by_category_name(category_name)
    where(category_id: Category.select(:id).where(title: category_name))
      .order(title: :desc)
      .pluck(:title)
>>>>>>> f9c5bef30da2e8f636da6260491690f5c333fcd7
  end
end
