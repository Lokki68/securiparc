# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :vehicule
  belongs_to :location

  validates :name, presence: true
  validates :min_quantity, numericality: { only_integer: true, greather_than_or_equal_to: 0 }
end
