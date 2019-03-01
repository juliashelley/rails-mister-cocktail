class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to dose_path
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to dose_path(Dose.last)
  end

  def dose_params
    params.require(:dose).permit(:description)
  end

end
