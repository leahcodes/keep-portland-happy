class FavoritesController < ApplicationController
  def new
    @favorite = Favorite.new
  end

  def create
    user_id = params[:user_id].to_i
    eat_id = params[:eat_id].to_i
    @favorite = Favorite.new(user_id: user_id, eat_id: eat_id)
    @favorite.save
    redirect_to eats_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to eats_path
  end

  private
  def favorite_params
    params.require(:favorite).permit(:user_id, :eat_id)
  end
end
