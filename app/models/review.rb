class Review < ApplicationRecord
  has_many :category_review_relationships
  belongs_to :movie

  accepts_nested_attributes_for :category_review_relationships

  def ratings
    if category_review_relationships.empty?
      Category.all.map{ |category| { category: category.name, rating: 0 } }
    else
      category_review_relationships.map{ |crr| { category: crr.category.name, rating: crr.rating } }
    end
  end
end
