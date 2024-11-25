# frozen_string_literal: true

class Vehicule < ApplicationRecord
  has_many :locations
  has_many :items, through: :locations

  validates :name, presence: true

  state_machine :status, initial: :enable do
    event :disabled do
      transition enabled: :enable
    end

    event :enabled do
      transition disable: :disable
    end
  end
end
