# frozen_string_literal: true

class Location < ApplicationRecord
  has_many :items
  belongs_to :vehicule

  validates :name, presence: true
  validates :localisation, presence: true
end
