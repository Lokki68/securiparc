# frozen_string_literal: true

class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :find_model, except: %w[index new create]

  def index
    @q = User.ransack params[:q]
    @users = @q.result
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new permit_params

    if @user.save
      flash[:success] = 'Utilisateur créé'
      redirect_to users_path
    else
      render :new
    end
  end

  def update
    if @user.update permit_params
      flash[:success] = 'Utilisateur modifié'
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    flash[:success] = 'Utilisateur supprimé' if @user.destroy
    redirect_to users_path
  end

  def activate
    flash[:success] = 'Utilisateur activé' if @user.activate
    redirect_to users_path
  end

  def deactivate
    flash[:success] = 'Utilisateur desactivé' if @user.deactivate
    redirect_to users_path
  end

  private

  def find_model
    @user = User.find params[:id]
  end

  def permit_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role_id)
  end
end
