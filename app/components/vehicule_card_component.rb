# frozen_string_literal: true

class VehiculeCardComponent < ViewComponent::Base
  def initialize(vehicule:)
    @vehicule = vehicule
    @header_bg = find_header_color(vehicule.vehicule_type)
  end

  private

  def find_header_color(vehicule_type)
    case vehicule_type
    when 'suap'
      'bg-primary'
    when 'inc'
      'bg-danger'
    when 'div'
      'bg-success'
    else
      'bg-dark'
    end
  end
end
