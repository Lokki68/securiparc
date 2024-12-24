# frozen_string_literal: true

class DashboardController < ApplicationController
  def index
    @vehicules = Vehicule.all
  end
end
