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

Recipe.create(
  user_id: (1..5).to_a.sample,
  title: "No-Bake Cheesecake",
  category: "Desserts",
  description: "This is an amazing recipe that I just threw together one day. Everyone loves it so much, it doesn't last long. This is good with any kind of canned or fresh fruit.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484427268/no_bake_cheesecake.jpg",
  ingredients: ["1 1/2 cups graham cracker crumbs",
                "1/3 cup packed brown sugar",
                "1/2 teaspoon ground cinnamon",
                "1/3 cup butter, melted",
                "2 (8 ounce) packages cream cheese",
                "2 teaspoons lemon juice",
                "1 pint heavy whipping cream",
                "1/3 cup white sugar",
                "1 (21 ounce) can cherry pie filling"],
  directions: ["In a small bowl, stir together the graham cracker crumbs, brown sugar and cinnamon. Add melted butter and mix well. Press into the bottom of an 8 or 10 inch springform pan. Chill until firm.",
               "In a medium bowl, beat together the cream cheese and lemon juice until soft. Add whipping cream and beat with an electric mixer until batter becomes thick. Add the sugar and continue to beat until stiff. Pour into chilled crust, and top with pie filling. Chill several hours or overnight. Just before serving, remove the sides of the springform pan."]
  )

Recipe.create(
user_id: (1..5).to_a.sample,
title: "Old Fashioned Apple Pie",
category: "Desserts",
description: "Apple pie ...so American, so delicious. A true classic. Enjoy!",
image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484432382/apple_pie.jpg",
ingredients: ["1 recipe pastry for a 9 inch double crust pie",
              "1/2 cup unsalted butter",
              "3 tablespoons all-purpose flour",
              "1/4 cup water",
              "1/2 cup white sugar",
              "1/2 cup packed brown sugar",
              "18 Granny Smith apples - peeled, cored and sliced"],
directions: ["Preheat oven to 425 degrees F (220 degrees C). Melt the butter in a saucepan. Stir in flour to form a paste. Add water, white sugar and brown sugar, and bring to a boil. Reduce temperature and let simmer.",
             "Place the bottom crust in your pan. Fill with apples, mounded slightly. Cover with a lattice work crust. Gently pour the sugar and butter liquid over the crust. Pour slowly so that it does not run off.",
             "Bake 15 minutes in the preheated oven. Reduce the temperature to 350 degrees F (175 degrees C). Continue baking for 35 to 45 minutes, until apples are soft."]
)

    Recipe.create(
      user_id: (1..5).to_a.sample,
      title: "Delicious Brownies",
      category: "Desserts",
      description: "Best brownies I've ever had!",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484433132/brownies.jpg",
      ingredients: ["1/2 cup white sugar",
                    "2 tablespoons butter",
                    "2 tablespoons water",
                    "1 1/2 cups semisweet chocolate chips",
                    "2 eggs",
                    "11/2 teaspoon vanilla extract",
                    "2/3 cup all-purpose flour",
                    "1/4 teaspoon baking soda",
                    "1/2 teaspoon salt"],
      directions: ["Preheat the oven to 325 degrees F (165 degrees C). Grease an 8x8 inch square pan.",
                   "In a medium saucepan, combine the sugar, butter and water. Cook over medium heat until boiling. Remove from heat and stir in chocolate chips until melted and smooth. Mix in the eggs and vanilla. Combine the flour, baking soda and salt; stir into the chocolate mixture. Spread evenly into the prepared pan.",
                   "Bake for 25 to 30 minutes in the preheated oven, until brownies set up. Do not overbake! Cool in pan and cut into squares."]
      )

    Recipe.create(
      user_id: (1..5).to_a.sample,
      title: "Vanilla Ice Cream",
      category: "Desserts",
      description: "Use this easy recipe to make vanilla ice cream, or add your favorite flavors to it.",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484437112/icecream.jpg",
      ingredients: ["2 cups heavy cream",
                    "2 cups half-and-half",
                    "1/2 vanilla bean, split lengthwise and seeds scraped out with the tip of a sharp knife",
                    "1 cup granulated sugar",
                    "1/2 teaspoon salt"],
      directions: ["Preheat In a saucepan or a microwave-safe container, combine cream, half-and-half and vanilla bean and seeds. On the stove or in the microwave, bring mixture to a simmer. Immediately turn off heat.",
                   "Add sugar and salt and mix until sugar dissolves, about 1 minute. Taste and add more sugar and salt as needed to balance the flavors. The mixture should taste slightly too sweet when warm; the sweetness will be muted when the ice cream is frozen.",
                   "Strain mixture into a container and refrigerate until very cold, at least 4 hours and preferably overnight.",
                   "Churn mixture in an ice cream maker according to manufacturer's instructions. Serve immediately or transfer to an airtight container and let freeze until hard."]
      )

    Recipe.create(
      user_id: (1..5).to_a.sample,
      title: "Red Velvet Cupcakes",
      category: "Desserts",
      description: "This mini version of the classic Red Velvet Cake is one of the more popular offerings in bakeries all across the country. Whip up a batch this holiday season or anytime of the year.",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484437698/redvelvet.jpg",
      ingredients: ["2 1/2 cups flour",
                    "1/2 cup unsweetened cocoa powder",
                    "1 teaspoon baking soda",
                    "1/2 teaspoon salt",
                    "1 cup butter, softened",
                    "2 cups sugar",
                    "4 eggs",
                    "1/2 cup milk",
                    "1 ounce bottle red food coloring",
                    "2 teaspoons vanilla extract",
                    "Vanilla Cream Cheese Frosting:",
                    "1 (8 ounce) package cream cheese, softened",
                    "1/4 cup butter, softened",
                    "2 tablespoons sour cream",
                    "2 teaspoons vanilla extract",
                    "1 (16 ounce) box confectioners' sugar"],
      directions: ["Preheat oven to 350 degrees F. Mix flour, cocoa powder, baking soda and salt in medium bowl. Set aside.",
                   "Beat butter and sugar in large bowl with electric mixer on medium speed 5 minutes or until light and fluffy. Beat in eggs, one at a time. Mix in sour cream, milk, food color and vanilla. Gradually beat in flour mixture on low speed until just blended. Do not overbeat. Spoon batter into 30 paper-lined muffin cups, filling each cup 2/3 full.",
                   "Bake 20 minutes or until toothpick inserted into cupcake comes out clean. Cool in pans on wire rack 5 minutes. Remove from pans; cool completely. Frost with Vanilla Cream Cheese Frosting.",
                   "Vanilla Cream Cheese Frosting: Beat cream cheese, softened, butter, sour cream and McCormick(R) Pure Vanilla Extract in large bowl until light and fluffy. Gradually beat in confectioners' sugar until smooth."]
      )

    Recipe.create(
      user_id: (1..5).to_a.sample,
      title: "Bananas Foster",
      category: "Desserts",
      description: "Bananas sliced in a warm cinnamon and caramel sauce with rum. Serve over ice cream!",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484439070/bananasfoster.jpg",
      ingredients: ["1/4 cup butter",
                    "2/3 cup dark brown sugar",
                    "3 1/2 tablespoons rum",
                    "1 1/2 teaspoons vanilla extract",
                    "1/2 teaspoon ground cinnamon",
                    "3 bananas, peeled and sliced lengthwise and crosswise",
                    "1/4 cup coarsely chopped walnuts",
                    "1 pint vanilla ice cream"],
      directions: ["In a large, deep skillet over medium heat, melt butter. Stir in sugar, rum, vanilla and cinnamon. When mixture begins to bubble, place bananas and walnuts in pan. Cook until bananas are hot, 1 to 2 minutes. Serve at once over vanilla ice cream."]
      )

      Recipe.create(
      user_id: (1..5).to_a.sample,
      title: "Bread Pudding",
      category: "Desserts",
      description: "My family LOVES bread pudding, and this recipe is one that I have fine tuned to their taste It's great for breakfast or dessert and is delicious with milk poured on top! Enjoy!",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484441542/breadpudding.jpg",
      ingredients: ["6 slices day-old bread",
                    "2 tablespoons butter, melted",
                    "1/2 cup raisins (optional)",
                    "4 eggs, beaten",
                    "2 cups milk",
                    "3/4 cup white sugar",
                    "1 teaspoon ground cinnamon",
                    "1 teaspoon vanilla extract"],
      directions: ["Preheat oven to 350 degrees F (175 degrees C).",
                    "Break bread into small pieces into an 8 inch square baking pan. Drizzle melted butter or margarine over bread. If desired, sprinkle with raisins.",
                    "In a medium mixing bowl, combine eggs, milk, sugar, cinnamon, and vanilla. Beat until well mixed. Pour over bread, and lightly push down with a fork until bread is covered and soaking up the egg mixture.",
                    "Bake in the preheated oven for 45 minutes, or until the top springs back when lightly tapped."]
      )

      Recipe.create(
      user_id: (1..5).to_a.sample,
      title: "Flan",
      category: "Desserts",
      description: "This is a quick and easy baked flan recipe that is prepared in the blender. It's great served warm or cold and has a creamy texture like custard. Slice the flan and spoon a little of the melted sugar onto the top of the slice.",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484442827/flan.jpg",
      ingredients: ["2/3 cup white sugar",
                    "1 (14 ounce) can sweetened condensed milk",
                    "2 cups heavy cream",
                    "1 cup milk",
                    "5 eggs",
                    "2 teaspoons vanilla extract"],
      directions: ["Preheat oven to 350 degrees F (175 degrees C).",
                    "In a small nonstick saucepan, heat the sugar over medium heat. Shake and swirl occasionally to distribute sugar until it is dissolved and begins to brown. Lift the pan over the heat source (4 to 6 inches) and continue to brown the sugar until it becomes a dark golden brown. You may slightly stir while cooking, but continually stirring causes the sugar to crystallize. Pour caramelized sugar into a 1 1/2 quart casserole dish or a large loaf pan, and swirl to coat the bottom of the pan evenly.",
                    "In a blender, combine sweetened condensed milk, cream, milk, eggs and vanilla. Blend on high for one minute. Pour over the caramelized sugar.",
                    "Place the filled casserole dish into a larger pan and add 1 inch of HOT water to the outer pan. Bake in preheated oven for 50 to 60 minutes, or until set."]
      )

      Recipe.create(
      user_id: (1..5).to_a.sample,
      title: "Soft Oatmeal Cookies",
      category: "Desserts",
      description: "These oatmeal cookies are very moist with a good flavor. Add a cup of raisins or nuts if you desire.",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484443860/oatmealcookies.jpg",
      ingredients: ["1 cup butter, softened",
                    "1 cup white sugar",
                    "1 cup packed brown sugar",
                    "2 eggs",
                    "1 teaspoon vanilla extract",
                    "2 cups all-purpose flour",
                    "1 teaspoon baking soda",
                    "1 teaspoon salt",
                    "1 1/2 teaspoons ground cinnamon",
                    "3 cups quick cooking oats"],
      directions: ["In a medium bowl, cream together butter, white sugar, and brown sugar. Beat in eggs one at a time, then stir in vanilla. Combine flour, baking soda, salt, and cinnamon; stir into the creamed mixture. Mix in oats. Cover, and chill dough for at least one hour.",
                    "Preheat the oven to 375 degrees F (190 degrees C). Grease cookie sheets. Roll the dough into walnut sized balls, and place 2 inches apart on cookie sheets. Flatten each cookie with a large fork dipped in sugar.",
                    "Bake for 8 to 10 minutes in preheated oven. Allow cookies to cool on baking sheet for 5 minutes before transferring to a wire rack to cool completely."]
      )

      Recipe.create(
      user_id: (1..5).to_a.sample,
      title: "Classic Meatloaf",
      category: "Main Dishes",
      description: "The secrets to this meatloaf are fresh, very finely diced vegetables that give it moisture and flavor--and a light touch in mixing together the ingredients. This hearty meatloaf is the perfect meal for cool fall and winter evenings, served with mashed potatoes and simple mushroom gravy.",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484447214/meatloaf.jpg",
      ingredients: ["1 1/2 pounds ground beef",
                    "1 egg",
                    "1 onion, chopped",
                    "1 cup milk",
                    "1 cup dried bread crumbs",
                    "salt and pepper to taste",
                    "2 tablespoons brown sugar",
                    "2 tablespoons prepared mustard",
                    "1/3 cup ketchup"],
      directions: ["Preheat oven to 350 degrees F (175 degrees C).",
                    "In a large bowl, combine the beef, egg, onion, milk and bread OR cracker crumbs. Season with salt and pepper to taste and place in a lightly greased 5x9 inch loaf pan, OR form into a loaf and place in a lightly greased 9x13 inch baking dish.",
                    "In a separate small bowl, combine the brown sugar, mustard and ketchup. Mix well and pour over the meatloaf.",
                    "Bake at 350 degrees F (175 degrees C) for 1 hour."]
      )

  Recipe.create(
        user_id: (1..5).to_a.sample,
        title: "Pan Seared Salmon",
        category: "Main Dishes",
        description: "Simply seasoned with salt and pepper, these salmon fillets are pan seared with capers, and garnished with slices of lemon.",
        image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484447648/salmon.jpg",
        ingredients: ["4 (6 ounce) fillets salmon",
                      "2 tablespoons olive oil",
                      "2 tablespoons capers",
                      "1/8 teaspoon salt",
                      "1/8 teaspoon ground black pepper",
                      "4 slices lemon"],
        directions: ["Preheat a large heavy skillet over medium heat for 3 minutes.",
  "Coat salmon with olive oil. Place in skillet, and increase heat to high. Cook for 3 minutes. Sprinkle with capers, and salt and pepper. Turn salmon over, and cook for 5 minutes, or until browned. Salmon is done when it flakes easily with a fork.",
                      "Transfer salmon to individual plates, and garnish with lemon slices."]
        )

  Recipe.create(
        user_id: (1..5).to_a.sample,
        title: "Chicken Enchiladas",
        category: "Main Dishes",
        description: "Quick and easy creamy chicken enchiladas are sure to be a family favorite!",
        image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484448691/enchilada.jpg",
        ingredients: ["1 tablespoon butter",
                      "1/2 cup chopped green onions",
                      "1/2 teaspoon garlic powder",
                      "1 (4 ounce) can diced green chiles",
                      "1 (10.75 ounce) can condensed cream of mushroom soup",
                      "1/2 cup sour cream",
                      "1 1/2 cups cubed cooked chicken breast meat",
                      "6 (12 inch) flour tortillas",
                      "1/4 cup milk"],
        directions: ["Preheat oven to 350 degrees F (175 degrees C). Lightly grease a large baking dish.",
                      "In a medium saucepan over medium heat, melt the butter and saute the green onion until tender (about 3 to 4 minutes). Add the garlic powder, then stir in the green chiles, cream of mushroom soup and sour cream. Mix well. Reserve 3/4 of this sauce and set aside. To the remaining 1/4 of the sauce in the saucepan, add the chicken and 1/2 cup of shredded Cheddar cheese. Stir together.",
                      "Fill each flour tortilla with the chicken mixture and roll up. Place seam side down in the prepared baking dish.",
                      "In a small bowl combine the reserved 3/4 of the sauce with the milk. Spoon this mixture over the rolled tortillas and top with the remaining 1/2 cup of shredded Cheddar cheese. Bake in the preheated oven for 30 to 35 minutes, or until cheese is bubbly."]
        )

  Recipe.create(
        user_id: (1..5).to_a.sample,
        title: "Curried Coconut Chicken",
        category: "Main Dishes",
        description: "Curried chicken simmered in coconut milk and tomatoes makes for a mouthwatering hint of the tropics! Goes great with rice and vegetables.",
        image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484449181/currychicken.jpg",
        ingredients: ["2 pounds boneless skinless chicken breasts, cut into 1/2-inch chunks",
                      "1 teaspoon salt and pepper, or to taste",
                      "1 1/2 tablespoons vegetable oil",
                      "2 tablespoons curry powder",
                      "1/2 onion, thinly sliced",
                      "2 cloves garlic, crushed",
                      "1 (14 ounce) can coconut milk",
                      "1 (14.5 ounce) can stewed, diced tomatoes",
                      "1 (8 ounce) can tomato sauce",
                      "3 tablespoons sugar"],
        directions: ["Season chicken pieces with salt and pepper.",
                      "Heat oil and curry powder in a large skillet over medium-high heat for two minutes. Stir in onions and garlic, and cook 1 minute more. Add chicken, tossing lightly to coat with curry oil. Reduce heat to medium, and cook for 7 to 10 minutes, or until chicken is no longer pink in center and juices run clear.",
                      "Pour coconut milk, tomatoes, tomato sauce, and sugar into the pan, and stir to combine. Cover and simmer, stirring occasionally, approximately 30 to 40 minutes."]
        )

  Recipe.create(
        user_id: (1..5).to_a.sample,
        title: "Sirloin Steak with Garlic Butter",
        category: "Main Dishes",
        description: "I have never tasted any other steak that came even close to the ones made with this recipe. If you are having steak, don't skimp on flavor to save a few calories. The butter makes this steak melt in your mouth wonderful.",
        image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484449818/steak.jpg",
        ingredients: ["1/2 cup butter",
                      "2 teaspoons garlic powder",
                      "4 cloves garlic, minced",
                      "4 pounds beef top sirloin steaks",
                      "salt and pepper to taste"],
        directions: ["Preheat an grill for high heat.",
                      "In a small saucepan, melt butter over medium-low heat with garlic powder and minced garlic. Set aside.",
                      "Sprinkle both sides of each steak with salt and pepper.",
                      "Grill steaks 4 to 5 minutes per side, or to desired doneness. When done, transfer to warmed plates. Brush tops liberally with garlic butter, and allow to rest for 2 to 3 minutes before serving."]
        )

  Recipe.create(
        user_id: (1..5).to_a.sample,
        title: "Cranberry Spinach Salad",
        category: "Main Dishes",
        description: "Everyone I have made this for RAVES about it! It's different and so easy to make!",
        image_url: "https://res.cloudinary.com/joycechau/image/upload/v1484450641/salad.jpg",
        ingredients: ["1 tablespoon butter",
                      "3/4 cup almonds, blanched and slivered",
                      "1 pound spinach, rinsed and torn into bite-size pieces",
                      "1 cup dried cranberries",
                      "2 tablespoons toasted sesame seeds",
                      "1 tablespoon poppy seeds",
                      "1/2 cup white sugar",
                      "1/4 teaspoon paprika",
                      "1/4 cup white wine vinegar",
                      "1/4 cup cider vinegar",
                      "1/2 cup vegetable oil"],
        directions: ["In a medium saucepan, melt butter over medium heat. Cook and stir almonds in butter until lightly toasted. Remove from heat, and let cool.",
                      "In a medium bowl, whisk together the sesame seeds, poppy seeds, sugar, onion, paprika, white wine vinegar, cider vinegar, and vegetable oil. Toss with spinach just before serving.",
                      "In a large bowl, combine the spinach with the toasted almonds and cranberries."]
        )
