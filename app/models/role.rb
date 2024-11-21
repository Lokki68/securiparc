# frozen_string_literal: true

class Role < ApplicationRecord
  NAMES = %w[admin sapeur].freeze

  validates :name, presence: true, inclusion: { in: NAMES }


  def self.ransackable_attributes(auth_object = nil)
    %w[created_at id name updated_at]
  end
end
