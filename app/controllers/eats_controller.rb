class EatsController < ApplicationController
  def index
    @eats = Eat.all
  end

  def show
    @eat = Eat.find(params[:id])
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

  def edit
    @eat = Eat.find(params[:id])
  end

  def update
    @eat = Eat.find(params[:id])
    if @eat.update(eat_params)
      flash[:notice] = "Changes Saved!"
      redirect_to eat_path(@eat)
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

  private
  def eat_params
    params.require(:eat).permit(:name, :category, :address, :phone, :website, :hours, :location, :neighborhood, :menu)
  end
end
