# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_localisations
  allow_browser versions: :modern
  rescue_from CanCan::AccessDenied, with: :redirect_unauthorized

  def set_localisations
    @localisations = %w[roof left_side right_side inside]
  end

  private

  def redirect_unauthorized
    flash[:error] = 'Accès non autorisé'
    redirect_to root_path
  end
end
