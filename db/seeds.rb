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
  ingredients: ["1 quart vegetable oil for deep frying",
                "24 chicken wings, tips removed and wings cut in half at joint",
                "4 tablespoons butter",
                "1 tablespoon distilled white vinegar",
                "5 tablespoons hot pepper sauce",
                "salt and pepper to taste"],
  directions: ["Heat the oil in a large skillet or deep fryer to 375 degrees F (190 degrees C). Deep fry chicken wings in oil until done, about 10 minutes. Remove chicken from skillet or deep fryer and drain on paper towels.",
               "Melt the butter in a large skillet. Stir in the, vinegar and hot pepper sauce. Season with salt and pepper to taste. Add cooked chicken to sauce and stir over low heat to coat. The longer the wings simmer in the sauce, the hotter they will be. Serve warm."]
)
