class EatsController < ApplicationController

  respond_to :html
  respond_to :js

  def index
    @eats = Eat.all
    @user = current_user
    if params[:address]
      binding.pry
      new_address = params[:address]
      @user.update(:address => new_address)
      @user.save
      redirect_to eats_path
    end
    respond_with(@eats)
  end

  def show
    @eat = Eat.find(params[:id])
    @review = Review.new
    if user_signed_in? && Review.exists?(user_id: current_user.id, eat_id: @eat.id)
      @user_review = Review.where(user_id: current_user.id, eat_id: @eat.id)
    end
  end

  def new
    @eat = Eat.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @eat = Eat.new(eat_params)
    if @eat.save
      flash[:notice] = "New Eat Added! Yum!"
      respond_to do |format|
        format.html { redirect_to eats_path }
        format.js
      end
    else
      flash[:alert] = "Whoopsies, there was an error somewhere!"
      redirect_to eats_path
    end
  end

  def edit
    @eat = Eat.find(params[:id])
  end

  def update
    @eat = Eat.find(params[:id])
    if @eat.update(eat_params)
      flash[:notice] = "Changes Saved!"
      respond_to do |format|
        format.html { redirect_to eat_path(@eat) }
        format.js
      end
    else
      flash[:alert] = "Whoopsies, there was an error somewhere!"
      redirect_to edit_eat_path(@eat)
    end
  end

  def destroy
    @eat = Eat.find(params[:id])
    @eat.destroy
    flash[:notice] = "Be gone with ye'!"
    redirect_to eats_path
  end

  def rating_in_stars
    # if @eat.rating.between?(0-1.5)
    #    "<span class="glyphicon glyphicon-star"></span>"
    # elsif @eat.rating.between?(1.5-2.5)
    #    "<span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span>"
    # elsif @eat.rating.between?(2.5-3.5)
    #     "<span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span>"
    # elsif @eat.rating.between?(3.5-4.5)
    #    "<span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span>"
    # else @eat.rating.between?(4.5-5)
    #     "<span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span> <span class="glyphicon glyphicon-star"></span>"
    # end
  end

  private
  def eat_params
    params.require(:eat).permit(:name, :category, :address, :phone, :website, :hours, :location, :profile_image, :neighborhood, :menu, images_files: [])
  end
end
