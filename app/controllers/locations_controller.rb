class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new permit_params

    debugger

    if @location.save
      flash[:success] = 'Emplacement créé'
      redirect_to vehicule_path(@location.vehicule)
    else
      render :new
    end
  end

  private

  def permit_params
    params.require(:location).permit(%i[name localisation vehicule_id])
  end
end
