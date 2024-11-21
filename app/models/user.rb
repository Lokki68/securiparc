# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  belongs_to :role

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  state_machine :status, initial: :active do
    event :deactivate do
      transition active: :inactive
    end

    event :activate do
      transition inactive: :active
    end
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at email encrypted_password first_name id id_value last_name remember_created_at reset_password_sent_at reset_password_token role_id status updated_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[role]
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def initials
    "#{first_name.first}#{last_name.first}"
  end

  def role?(name)
    role && role.name == name
  end
end
