# frozen_string_literal: true

class IconButtonComponent < ViewComponent::Base
  def initialize(title:, icon:, path:, delete: false, classes: '')
    @title = title
    @icon = icon
    @path = path
    @classes = classes
    @data =  delete && { turbo_method: :delete, turbo_confirm: 'Voulez-vous vraiment supprimer ?' }
    super
  end
end
