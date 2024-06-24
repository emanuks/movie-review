class CategoryReviewRelationship < ApplicationRecord
  belongs_to :category
  belongs_to :review
end
