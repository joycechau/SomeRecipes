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

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
