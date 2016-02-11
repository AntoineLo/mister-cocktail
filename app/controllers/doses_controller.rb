class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.new(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    # @cocktail = Cocktail.find(params[:id])
    @dose = Dose.find(params[:id])
    @dose.delete
    redirect_to cocktail_path(Cocktail.find(@dose.cocktail_id))
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
