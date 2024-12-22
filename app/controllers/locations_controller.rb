# frozen_string_literal: true

class LocationsController < ApplicationController
  before_action :find_model, only: %i[edit update destroy]

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(permit_params)

    if @location.save
      flash[:success] = 'Emplacement créé'
      redirect_to vehicule_path(@location.vehicule)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @location.update(permit_params)
      flash[:success] = 'Emplacement modifié'
      redirect_to vehicule_path(@location.vehicule)
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    flash[:success] = 'Emplacement supprimé'
    redirect_to vehicule_path(@location.vehicule)
  end

  private

  def permit_params
    params.require(:location).permit(%i[name vehicule_id])
  end

  def find_model
    @location = Location.find(params[:id])
  end
end
