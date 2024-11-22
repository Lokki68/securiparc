# frozen_string_literal: true

class ActiveButtonComponent < ViewComponent::Base
  def initialize(status:, activate_action:, deactivate_action:, classes: '')
    @icon = status == 'active' ? 'bi bi-toggle-on' : 'bi bi-toggle-off'
    @action = status == 'active' ? deactivate_action : activate_action
    @title = status == 'active' ? 'Désactiver' : 'Activer'
    @confirmation = status == 'active' ? 'Voulez-vous vraiment désactiver ?' : 'Voulez-vous vraiment activer ?'
    @color = status == 'active' ? 'text-success' : 'text-danger'
    @classes = classes
    super
  end
end
