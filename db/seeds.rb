# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "Joyce", password: "password");
User.create(username: "ilovecorgis", password: "password");
User.create(username: "sfgiants", password: "password");
User.create(username: "baconlover", password: "password");
User.create(username: "Peter", password: "password");

Recipe.create(
  user_id: (1..5).to_a.sample,
  title: "Chocolate Chip Cookie",
  category: "Desserts",
  description: "Perfectly baked chocolate chip cookies for everyone to enjoy!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484339666/chocolate_chip_cookie.jpg",
  ingredients: ["1 cup butter, softened",
                "1 cup white sugar",
                "1 cup packed brown sugar",
                "2 eggs",
                "2 teaspoons vanilla extract",
                "3 cups all-purpose flour",
                "1 teaspoon baking soda",
                "1/2 teaspoon salt",
                "2 cups semisweet chocolate chips"],
  directions: ["Preheat oven to 350 degrees F (175 degrees C).",
               "Cream together the butter, white sugar, and brown sugar until smooth. Beat in the eggs one at a time, then stir in the vanilla. Dissolve baking soda in hot water. Add to batter along with salt. Stir in flour, chocolate chips, and nuts. Drop by large spoonfuls onto ungreased pans.",
               "Bake for about 10 minutes in the preheated oven, or until edges are nicely browned."]
)

Recipe.create(
  user_id: (1..5).to_a.sample,
  title: "Buffalo Chicken Wings",
  category: "Appetizers",
  description: "Let your palate fly away on wings of fire - easy, spicy buffalo wings!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484339911/buffalo_chicken_wings.jpg",
  ingredients: ["1 quart vegetable oil for deep frying",
                "24 chicken wings, tips removed and wings cut in half at joint",
                "4 tablespoons butter",
                "1 tablespoon distilled white vinegar",
                "5 tablespoons hot pepper sauce",
                "salt and pepper to taste"],
  directions: ["Heat the oil in a large skillet or deep fryer to 375 degrees F (190 degrees C). Deep fry chicken wings in oil until done, about 10 minutes. Remove chicken from skillet or deep fryer and drain on paper towels.",
               "Melt the butter in a large skillet. Stir in the, vinegar and hot pepper sauce. Season with salt and pepper to taste. Add cooked chicken to sauce and stir over low heat to coat. The longer the wings simmer in the sauce, the hotter they will be. Serve warm."]
)

Recipe.create(
  user_id: (1..5).to_a.sample,
  title: "Caribbean Grilled Salmon Kabobs",
  category: "Main Dishes",
  description: "Caribbean Grilled Salmon Kabobs will take you straight to the islands with the cajun spices, fresh pineapple, bell peppers and fresh seafood! A perfect healthy grilling recipe for the summer that’s done in 20 minutes!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484350453/salmon_kabobs.jpg",
  ingredients: ["2 lbs. fresh salmon (skinned), cut into 1\" cubes",
                "2-3 cups of fresh pineapple, cut into 1\" cubes",
                "1 red onion, cut into 1\" cubes",
                "15 mini bell peppers (assorted colors), may need to half some depending on size",
                "2 tablespoons cajun seasoning spice",
                "1 teaspoon garlic powder"],
  directions: ["Soak wooden skewers in water for 15-30 minutes.",
               "Preheat grill to medium high heat or 400 degrees.",
               "Pat Salmon dry and cut into 1\" cubes.",
               "In a small bowl mix cajun seasoning spice and garlic powder, stir with a spoon.",
               "Season both sides of the salmon cubes with cajun spice blend. Gently rub the seasoning in to make sure it sticks to the salmon.",
               "Alternate the red onion, pineapple, bell peppers, and salmon on the skewer until it is full. Repeat process.",
               "Spray grill grates with PAM or rub down with olive oil.",
               "Place salmon kabobs on grill and cook for 2-3 minutes per side.",
               "Remove from grill and serve!"]
)

Recipe.create(
  user_id: (1..5).to_a.sample,
  title: "3-Ingredient Crock-Pot Chicken Tacos",
  category: "Main Dishes",
  description: "In just five minutes, these delicious chicken tacos are in the crock-pot and cooking away! Ridiculously easy and sure to become your go-to lifesaver!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484350664/crockpot_chicken_tacos.png",
  ingredients: ["1½ pounds boneless, skinless chicken breasts",
                "1 1.25-ounce packet low-sodium taco seasoning",
                "1 16-ounce jar of your favorite salsa"],
  directions: ["Place chicken in the bottom of the crock-pot.",
               "Sprinkle taco seasoning over chicken.",
               "Pour salsa on top.",
               "Cook on low (for 6-8 hours) or high (for 4 hours).",
               "Just before serving, use two forks to shred the chicken.",
               "Stir to evenly distribute salsa throughout chicken.",
               "Serve immediately with desired toppings."]
)

Recipe.create(
  user_id: (1..5).to_a.sample,
  title: "Salsa Shrimp Lettuce Wraps",
  category: "Main Dishes",
  description: "Looking for a healthy dinner that is ready in 15 minutes? These Salsa Shrimp Lettuce Wraps can be made so easily and quickly that you won’t have to wonder what’s for dinner.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484341683/shrimp_lettuce_wrap.jpg",
  ingredients: ["1 tablespoon olive oil",
                "1 clove garlic, minced",
                "12 ounces raw medium shrimp, peeled, deveined, and patted dry",
                "3/4 cup Sabra mango peach salsa",
                "2 teaspoons lime juice",
                "1/4 teaspoon salt",
                "1 head Boston lettuce",
                "1 green onion, chopped"],
  directions: ["In a large skillet over medium heat, heat the oil. Once hot, add the garlic and shrimp. Cook 3-5 minutes or until the shrimp is pink and no longer transparent, flipping once during cooking. Remove from the heat and stir in the salsa, lime juice, and salt.",
               "Separate the lettuce leaves and fill with some of the shrimp. Top with green onion."]
  )

Recipe.create(
  user_id: (1..5).to_a.sample,
  title: "Creamy Italian Pasta",
  category: "Main Dishes",
  description: "This Easy Creamy Italian Pasta is as cozy and familiar as my favorite cardigan. You’ll want to eat it all fall and winter long.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484341937/creamy_italian_pasta.jpg",
  ingredients: ["8 ounces dry penne pasta",
                "8 slices bacon",
                "8 ounces baby bella mushrooms, sliced",
                "½ cup evaporated milk",
                "½ cup Parmesan cheese",
                "1 package (2¼ teaspoons) Italian dressing seasoning packet",
                "10-15 cherry tomatoes, halved"],
  directions: ["Cook the pasta according to package directions, drain, and return to the pot.",
               "While the pasta is cooking, fry the bacon in a large skillet. When the bacon is crispy, remove it from the skillet and place it on a paper towel lined plate. Drain all but 1 Tablespoon of grease from the skillet. Add the sliced mushrooms and saute until softened.",
               "When the pasta is finished, add the evaporated milk, Parmesan cheese, and Italian seasoning packet, stirring until the cheese is melted.",
               "Stir in the mushrooms and halved cherry tomatoes. Serve the pasta with crumbled cooked bacon on top."]
  )
