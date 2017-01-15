class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :fname
      t.string :lname
      t.string :profile_url, default: "https://res.cloudinary.com/joycechau/image/upload/v1484519058/default_profile_pic.jpg"
      t.text :interests

      t.timestamps
    end

    add_index :users, :username, unique: true
    add_index :users, :session_token, unique: true
  end
end
