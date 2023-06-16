class Test < ApplicationRecord
    belongs_to :category
    belongs_to :author
    
    def self.sorted_tests_by_category(category_name)
        where(category: Category.find_by(name: category_name)).order(title: :desc).pluck(:title)
    end
end
