# frozen_string_literal: true

class NavitemComponent < ViewComponent::Base
  def initialize(path:, title:, active:, icon: '')
    @path = path
    @title = title
    @active = active && 'menu-active'
    @icon = icon

  end
end
