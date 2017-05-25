class CreateGyms < ActiveRecord::Migration[5.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.references :user, foreign_key: true
    end
  end
end
