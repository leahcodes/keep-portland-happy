class EatsController < ApplicationController
  def index
    @eats = Eat.all
  end

  def new
    @eat = Eat.new
  end

  def create
    @eat = Eat.new(eat_params)
    if @eat.save
      flash[:notice] = "New Eat Added! Yum!"
      redirect_to eats_path
    else
      flash[:alert] = "Whoopsies, there was an error somewhere!"
      redirect_to new_eat_path
    end
  end

  private
  def eat_params
    params.require(:eat).permit(:name, :category, :address, :phone, :website, :hours, :location, :neighborhood, :menu)
  end
end
