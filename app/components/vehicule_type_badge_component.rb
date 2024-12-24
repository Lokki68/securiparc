# frozen_string_literal: true

class VehiculeTypeBadgeComponent < ViewComponent::Base
  def initialize(vehicule_type:)
    @vehicule_type = vehicule_type
    @classes = find_classes(vehicule_type)
  end

  private

  def find_classes(vehicule_type)
    case vehicule_type
    when 'suap' then 'text-bg-primary'
    when 'inc' then 'text-bg-danger'
    when 'div' then 'text-bg-success'
    else 'text-bg-dark'
    end
  end
end
