# frozen_string_literal: true

class Vehicule < ApplicationRecord
  has_many :locations
  accepts_nested_attributes_for :locations, reject_if: :all_blank, allow_destroy: true

  has_many :items, through: :locations

  validates :name, presence: true

  state_machine :status, initial: :enable do
    event :disabled do
      transition enabled: :disable
    end

    event :enabled do
      transition disable: :enable
    end
  end
end
