# frozen_string_literal: true

class VehiculesController < ApplicationController
  # load_and_authorize_resource
  before_action :init_variables
  before_action :find_model, except: %w[index new create]


  def index
    @vehicules = Vehicule.all
  end

  def show; end

  def new
    @vehicule = Vehicule.new
    p 'controller_vehicules_new'
  end

  def edit; end

  def create
    @vehicule = Vehicule.new permit_params

    if @vehicule.save
      flash[:success] = 'Vehicule cree'
      redirect_to vehicules_path
    else
      render :new
    end
  end

  def update
    if @vehicule.update permit_params
      flash[:success] = 'Vehicule modifie'
      redirect_to vehicules_path
    else
      render :edit
    end
  end

  def destroy
    flash[:success] = 'Vehicule supprime' if @vehicule.destroy
    redirect_to vehicules_path
  end

  def enable
    flash[:success] = 'Vehicule active' if @vehicule.enabled
    redirect_to vehicules_path
  end

  def disable
    flash[:success] = 'Vehicule desactive' if @vehicule.disabled
    redirect_to vehicules_path
  end

  private

  def init_variables
    @vehicule_types = %w[suap inc div]
  end

  def permit_params
    params.require(:vehicule).permit(%i[name vehicule_type registration_number maintenance_date technical_inspection], location_attributes: %i[name _destroy])
  end

  def find_model
    @vehicule = Vehicule.find params[:id]
  end
end
