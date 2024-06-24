class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @movie = Movie.find(params[:movie_id])

    categories = Category.all

    categories.each do |category|
      @review.category_review_relationships.build(category_id: category.id)
    end
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to root_path, notice: "Review was successfully created." }
        format.json { render json: {}, status: :created }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
  def review_params
    params.require(:review).permit(
      :movie_id, 
      category_review_relationships_attributes: [:category_id, :rating]
    )
  end
end
