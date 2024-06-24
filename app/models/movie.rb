class Movie < ApplicationRecord
  has_many :reviews

  def ratings
    if reviews.empty?
      categories = {}
      Category.all.each{ |category| categories[category.name] = 0 }
      categories
    else
      categories = reviews.map { |review| review.ratings }.flatten.group_by { |rating| rating[:category] }
      categories.each do |key, array|
        ratings = array.map { |item| item[:rating] }
        average = ratings.sum / ratings.size
        categories[key] = average
      end
    end
  end

  def overall_rating
    ratings.values.sum / ratings.size
  end
end
