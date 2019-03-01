class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path
  end

  def create
    # look at params hash and see where the ingredient is stored
    # add it to the permit
    # add the cocktail you found in the path to the dose
    # @dose.cocktail = cocktail

    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    raise
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
