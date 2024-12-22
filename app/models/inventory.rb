# frozen_string_literal: true

class Inventory < ApplicationRecord
  has_many :items
  belongs_to :vehicule
end
