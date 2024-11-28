# frozen_string_literal: true

class RoleBadgeComponent < ViewComponent::Base
  def initialize(role:)
    @role = role
    @classes = badge_color
  end

  private

  def badge_color
    case @role
    when 'admin'
      'text-bg-warning'
    when 'sapeur'
      'text-bg-primary'
    end
  end
end
