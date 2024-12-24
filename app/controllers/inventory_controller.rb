# frozen_string_literal: true

class InventoryController < ApplicationController
  def new
    @vehicule = Vehicule.find(params[:id])
  end
end
