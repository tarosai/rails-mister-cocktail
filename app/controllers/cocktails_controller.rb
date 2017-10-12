class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    #  with attributes from the params
    @cocktail = Cocktail.new(cocktail_params)
    # save it
    if @cocktail.save
      # redirect
      redirect_to cocktail_path(@cocktail)
    else
      render :new #render 'new.html.erb'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
