# frozen_string_literal: true

class IconButtonComponent < ViewComponent::Base
  def initialize(title:, icon:, path:)
    @title = title
    @icon = icon
    @path = path
    super
  end
end
