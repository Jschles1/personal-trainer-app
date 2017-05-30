class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :gym

  validates_datetime :appointment_time, :on => :create, :on_or_after => :today
  validates :appointment_time, presence: true
  validates :appointment_time, uniqueness: true

  def client_attributes=(client_attributes)
    if client_attributes[:name] != ""
      self.client = Client.find_or_create_by(client_attributes)
    end
  end
end
