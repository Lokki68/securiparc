# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  allow_browser versions: :modern
  rescue_from CanCan::AccessDenied, with: :redirect_unauthorized

  private

  def redirect_unauthorized
    flash[:error] = 'Accès non autorisé'
    redirect_to root_path
  end
end
