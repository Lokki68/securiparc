# frozen_string_literal: true

class AlertComponent < ViewComponent::Base
  def initialize(key:, value:)
    @key = key
    @value = value
    @color = find_color(key)
    super
  end

  private

  def find_color(key)
    case key
    when 'success' then 'alert-success'
    when 'error' then 'alert-danger'
    when 'notice' then 'alert-warning'
    else 'alert-info'
    end
  end
end
