# frozen_string_literal: true

class AlertComponent < ViewComponent::Base
  def initialize(key:, value:)
    @key = key
    @value = value
    super
  end
end
