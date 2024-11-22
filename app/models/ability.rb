# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role?('admin')
      can :manage, :all
    elsif user.role?('sapeur')
      # can :edit, User, id: user.id
      can :update, User, id: user.id
      can :read, :all
    end
  end
end
