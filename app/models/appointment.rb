class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :gym
end
