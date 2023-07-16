# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :results
  has_many :users, through: :results
  has_many :results
  has_many :tests, through: :results
  belongs_to :author, class_name: 'User'
  def self.sorted_test_titles_by_category_name(category_name)
    joins('JOIN categories ON categories.id = tests.category_id')
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
