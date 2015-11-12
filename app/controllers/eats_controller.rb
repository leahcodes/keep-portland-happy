class EatsController < ApplicationController

  respond_to :html
  respond_to :js

  def index
    @newest_eats = Eat.all.order("created_at DESC")
    @eats = Eat.all
    @top_eats = Eat.all #do logic at some point!
    @user = current_user
    respond_with(@eats)

    if params[:search].present?
      @user_params = params[:search]
      # @user_location = Geocoder.coordinates(@user_params)
      @user.update(:address => @user_params)
      if @user.save
        redirect_to eats_path
      else
        flash[:notice] = "There was an error!"
        redirect_to eats_path
      end
    else
      @eats = Eat.all
    end

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
    @user = current_user
  end

  def update
    @eat = Eat.find(params[:id])
    @user = current_user
    if @eat.update(eat_params)
      flash[:notice] = "Changes Saved!"
      respond_to do |format|
        format.html { redirect_to eat_path(@eat) }
        format.js
      end
    elsif params[:address]
      new_address = params[:address]
      @user.update(:address => new_address)
      @user.save
      redirect_to eats_path
    else
      flash[:alert] = "Whoopsies, there was an error somewhere!"
      redirect_to eats_path
    end
  end

  def destroy
    @eat = Eat.find(params[:id])
    @eat.destroy
    flash[:notice] = "Be gone with ye'!"
    redirect_to eats_path
  end

  private
  def eat_params
    params.require(:eat).permit(:name, :category, :address, :phone, :website, :hours, :location, :profile_image, :neighborhood, :menu, images_files: [])
  end
end
