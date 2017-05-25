class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string  :name
      t.string  :email
      t.string  :phone
      t.integer :age
      t.integer :weight
      t.string  :goal
      t.integer :weight_change
      t.integer :user_id
    end
  end
end
