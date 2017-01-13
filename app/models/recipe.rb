# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  user_id        :integer          not null
#  title          :string           not null
#  image_url      :string
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


  belongs_to :user
end
