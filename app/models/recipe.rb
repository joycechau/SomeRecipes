# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  title          :string           not null
#  image_url      :string           default("https://res.cloudinary.com/joycechau/image/upload/v1484519242/default_recipe_detail_pic.gif")
#  average_rating :integer
#  category       :string           not null
#  description    :text             not null
#  ingredients    :string           default("{}"), not null, is an Array
#  directions     :string           default("{}"), not null, is an Array
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Recipe < ApplicationRecord
  validates :title, :category, :description, presence: true
  validates :user, :ingredients, :directions, presence: true
  validates :title, length: { maximum: 100 }
  validates :description, length: { maximum: 400 }
  validates :ingredients, :directions, length: { maximum: 2000 }
  belongs_to :user
  has_many :favorites
  has_many :favorite_users,
            through: :favorites,
            source: :user
            
end
