# frozen_string_literal: true

class ActiveButtonComponent < ViewComponent::Base
  def initialize(status:, activate_action:, deactivate_action:, classes: '')
    active = %w[active enable].include?(status)
    @icon = active ? 'bi bi-toggle-on' : 'bi bi-toggle-off'
    @action = active ? deactivate_action : activate_action
    @title = active ? 'Désactiver' : 'Activer'
    @confirmation = active ? 'Voulez-vous vraiment désactiver ?' : 'Voulez-vous vraiment activer ?'
    @color = active ? 'text-success' : 'text-danger'
    @classes = classes
    super
  end
end
