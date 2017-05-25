class User < ApplicationRecord
  has_many :appointments
  has_many :clients
  has_many :gyms

  has_secure_password
end
