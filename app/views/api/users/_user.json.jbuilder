json.extract! user, :id, :username, :fname, :lname,
  :profile_url, :interests, :recipes

# json.recipes do
#   json.array! user.recipes do |recipe|
#     json.title recipe.title
#     json.description recipe.description
#     json.username recipe.user.username
#     json.image_url recipe.image_url
#   end
# end
