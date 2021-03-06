class EatsController < ApplicationController

  respond_to :html
  respond_to :js

  def index
    @newest_eats = Eat.all.order("created_at DESC")
    @eats = Eat.all
    @top_eats = Eat.all.order("average_rating DESC")
    @top_3_eats = @top_eats.values_at(0,1,2)
    @top_4_to_6_eats = @top_eats.values_at(3,4,2)
    @user = current_user
    if @user && @user.distance_to_travel != nil && @user.address != nil
      @nearby_eats = Eat.near(@user.address, @user.distance_to_travel, order: 'distance')
    end

    gon.user = current_user
    if @nearby_eats
      gon.nearby_eats = Eat.near(current_user.address, current_user.distance_to_travel, order: 'distance')
    end

    @hash = Gmaps4rails.build_markers(@user) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end

    if params[:search].present? && params[:distance].present?
      user_address = params[:search]
      user_distance = params[:distance]
      @user.update(:address => user_address, :distance_to_travel => user_distance)
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
    @image = Image.new
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
    params.require(:eat).permit(:name, :category, :address, :phone, :website, :hours, :location, :profile_image, :neighborhood, :menu, :instagram_location_id, :mon_happy_start, :mon_happy_end, :tues_happy_start, :tues_happy_end, :wed_happy_start, :wed_happy_end, :thur_happy_start, :thur_happy_end, :fri_happy_start, :fri_happy_end, :sat_happy_start, :sat_happy_end, :sun_happy_start, :sun_happy_end, :mon_open, :mon_close, :tues_open, :tues_close, :wed_open, :wed_close, :thur_open, :thur_close, :fri_open, :fri_close, :sat_open, :sat_close, :sun_open, :sun_close, images_files: [])
  end
end
