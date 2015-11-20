class ReviewsController < ApplicationController

  respond_to :html
  respond_to :js

  def index
  end

  def show
  end

  def new
    @review = Review.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @eat = Eat.find(params[:eat_id])
    @review = @eat.reviews.new(review_params)
    if @review.save
      new_rating = @eat.reviews.average(:rating).to_f
      current_user.reviews.push(@review)
      @eat.update(average_rating: new_rating)
      flash[:notice] = "Review Added!"
      respond_to do |format|
        format.html { redirect_to eat_path(@eat) }
        format.js
      end
    else
      flash[:alert] = "Whoopsies, there was an error somewhere!"
      redirect_to new_eat_review_path(@eat)
    end
  end

  def edit
    # @review = Review.find(params[:id])
  end

  def update
    # @eat = Eat.find(params[:id])
    # if @eat.update(eat_params)
    #   flash[:notice] = "Changes Saved!"
    #   respond_to do |format|
    #     format.html { redirect_to eat_path(@eat) }
    #     format.js
    #   end
    # else
    #   flash[:alert] = "Whoopsies, there was an error somewhere!"
    #   redirect_to edit_eat_path(@eat)
    # end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Be gone with ye'!"
    redirect_to eat_path(@review.eat)
  end

  private
  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
