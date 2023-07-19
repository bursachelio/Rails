# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'
  
  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :users, through: :results

  scope :easy, -> { where(level: [0, 1]) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where('level >= ?', 5) }
  
  def self.sorted_test_titles_by_category_name(category_name)
    joins(:category)
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
