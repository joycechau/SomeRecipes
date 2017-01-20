# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  recipe_id  :integer          not null
#  rating     :integer          not null
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
  validates :rating, presence: true, inclusion: { in: (1..5) }
  # validates :recipe, :user, presence: true
  validates :body, length: { maximum: 500 }
  validates :user_id, uniqueness: { scope: :recipe_id }

  belongs_to :recipe
  belongs_to :user
end
