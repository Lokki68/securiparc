# frozen_string_literal: true

class Location < ApplicationRecord
  has_many :items
  belongs_to :vehicule

  validates :name, presence: true
  validates :min_quantity, numericality: true
end
