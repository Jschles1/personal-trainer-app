class Client < ApplicationRecord
  include ActiveModel::Validations

  has_many :appointments
  has_many :gyms, through: :appointments
  belongs_to :user

  validates :name, :email, :phone, :age, :weight, :goal, presence: true
  validates :email, uniqueness: true, email: true
  validates :age, numericality: { greater_than: 0, less_than: 100 }
  validates :weight, numericality: { greater_than: 0 }
  validates :phone, phone: true
end
