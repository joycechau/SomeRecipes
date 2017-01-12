class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.string :image_url
      t.integer :average_rating
      t.string :category, null: false
      t.text :description, null: false
      t.string :ingredients, null: false, array: true, default: []
      t.string :directions, null: false, array: true, default: []

      t.timestamps
    end
    add_index :recipes, :user_id
  end
end
