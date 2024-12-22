# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :init_variables
  before_action :find_model, only: %i[destroy]

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(permit_params)

    if @item.save
      flash[:success] = 'Article créé'
      redirect_to vehicule_path(@item.vehicule)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @item.update(permit_params)
      flash[:success] = 'Article modifié'
      redirect_to vehicule_path(@item.vehicule)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    flash[:success] = 'Article supprimé'
    redirect_to vehicule_path(@item.vehicule)
  end

  private

  def find_model
    @item = Item.find(params[:id])
  end

  def permit_params
    params.require(:item).permit(%i[name min_quantity location_id vehicule_id])
  end

  def init_variables
    @vehicule = Vehicule.find(params[:id])
    @locations = @vehicule.locations
  end
end
