class ImagesController < ApplicationController
  # def index
  #   @eats = Eat.all
  # end

  def show
    @eat = Eat.find(params[:eat_id])
    @image = Image.find(params[:id])
  end

  def new
    @eat = Eat.find(params[:eat_id])
    @image = Image.new
  end

  def create
    @eat = Eat.find(params[:eat_id])
    @image = @eat.images.new(image_params)
    if @image.save
      @eat.images.push(@image)
      current_user.images.push(@image)
      flash[:notice] = "New Image Added!"
      redirect_to eat_path(@eat)
    else
      flash[:alert] = "Whoopsies, there was an error somewhere!"
      redirect_to new_eat_image_path(@eat)
    end
  end

  # def edit
  #   @eat = Eat.find(params[:id])
  # end
  #
  # def update
  #   @eat = Eat.find(params[:id])
  #   if @eat.update(eat_params)
  #     flash[:notice] = "Changes Saved!"
  #     redirect_to eat_path(@eat)
  #   else
  #     flash[:alert] = "Whoopsies, there was an error somewhere!"
  #     redirect_to edit_eat_path(@eat)
  #   end
  # end
  #
  # def destroy
  #   @eat = Eat.find(params[:id])
  #   @eat.destroy
  #   flash[:notice] = "Be gone with ye'!"
  #   redirect_to eats_path
  # end

  private
  def image_params
    params.require(:image).permit(:profile_image, :title, :caption)
  end
end
