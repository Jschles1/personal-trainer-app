class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :uid, limit: 8
      t.string :provider
      t.string :oauth_token
      t.datetime :oauth_expires_at
    end
  end
end
