class Client < ApplicationRecord
  has_many :appointments
  has_many :gyms, through: :appointments
  belongs_to :user
end