class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :client, foreign_key: true
      t.references :gym, foreign_key: true
      t.datetime :appointment_time
    end
  end
end
