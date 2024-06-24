class CreateCategoryReviewRelationships < ActiveRecord::Migration[7.1]
  def change
    create_table :category_review_relationships do |t|
      t.integer :rating
      t.references :category, index: true
      t.references :review, index: true

      t.timestamps
    end
  end
end