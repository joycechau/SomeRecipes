# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "joyce",
            password: "password",
            fname: "Joyce",
            lname: "Chau",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484679293/joyce_profile_pic.jpg",
            interests: "Desserts, puzzles, board games, coding, running, cooking");

User.create(username: "ilovecorgis",
            password: "password",
            fname: "Sally",
            lname: "Jones",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484520322/ilovecorgis_profile_pic.jpg",
            interests: "corgis, cookies, shopping, more corgis");

User.create(username: "sfgiants",
            password: "password",
            fname: "Buster",
            lname: "Posey",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484520429/sfgiants_profile_pic.jpg",
            interests: "sports, san francisco, snowboarding");

User.create(username: "baconlover",
            password: "password",
            fname: "Joe",
            lname: "Fulcher",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484520486/baconlover_profile_pic.png",
            interests: "bungee jumping, barbecue, reading");

User.create(username: "goldenstatewarriors",
            password: "password",
            fname: "Steph",
            lname: "Curry",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484680025/goldenstatewarriors_profile_pic.png",
            interests: "basketball, Ayesha, sports, fine dining, charity");

User.create(username: "luckycharms",
            password: "password",
            fname: "Ellen",
            lname: "Baker",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484520553/luckycharms_profile_pic.jpg",
            interests: "cereal, baking, comic books");

User.create(username: "catsarecool",
            password: "password",
            fname: "Patricia",
            lname: "Adams",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484520619/catlover_profile_pic.jpg",
            interests: "small cats, medium cats, big cats, all cats");

User.create(username: "flowergirl",
            password: "password",
            fname: "Mary",
            lname: "Smith",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484520777/flowergirl_profile_pic.jpg",
            interests: "flowers, weddings, cheesecake");

User.create(username: "chefjohn",
            password: "password",
            fname: "John",
            lname: "Rogers",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484520931/chefjohn_profile_url.png",
            interests: "restaurants, fine-dining, dinner parties");

User.create(username: "foodnetwork",
            password: "password",
            fname: "Bobby",
            lname: "Flay",
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484532335/foodnetwork_profile_pic.png",
            interests: "grilling, barbecue, steaks");

Recipe.create(
  user_id: 9,
  title: "Salsa Shrimp Lettuce Wraps",
  category: "Main Dishes",
  description: "Looking for a healthy dinner that is ready in 15 minutes? These Salsa Shrimp Lettuce Wraps can be made so easily and quickly that you won’t have to wonder what’s for dinner.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/c_scale,w_300/v1484341683/shrimp_lettuce_wrap.jpg",
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
    user_id: 1,
    title: "Red Velvet Cupcakes",
    category: "Desserts",
    description: "This mini version of the classic Red Velvet Cake is one of the more popular offerings in bakeries all across the country.",
    image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485063548/red_velvet_cupcake.jpg",
    ingredients: ["2 1/2 cups flour",
                  "1/2 cup unsweetened cocoa powder",
                  "1 teaspoon baking soda",
                  "1/2 teaspoon salt",
                  "1 cup butter, softened",
                  "2 cups sugar",
                  "4 eggs",
                  "1/2 cup milk",
                  "1 ounce bottle red food coloring",
                  "2 teaspoons vanilla extract"],
    directions: ["Preheat oven to 350 degrees F. Mix flour, cocoa powder, baking soda and salt in medium bowl. Set aside.",
                 "Beat butter and sugar in large bowl with electric mixer on medium speed 5 minutes or until light and fluffy. Beat in eggs, one at a time. Mix in sour cream, milk, food color and vanilla. Gradually beat in flour mixture on low speed until just blended. Do not overbeat. Spoon batter into 30 paper-lined muffin cups, filling each cup 2/3 full.",
                 "Bake 20 minutes or until toothpick inserted into cupcake comes out clean. Cool in pans on wire rack 5 minutes. Remove from pans; cool completely. Frost with Vanilla Cream Cheese Frosting."]
    )

Recipe.create(
  user_id: 5,
  title: "Caribbean Grilled Salmon Kabobs",
  category: "Main Dishes",
  description: "Caribbean Grilled Salmon Kabobs will take you straight to the islands with the cajun spices, fresh pineapple, bell peppers and fresh seafood! A perfect healthy grilling recipe for the summer that’s done in 20 minutes!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485063722/salmon_kebabs.jpg",
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
  user_id: 2,
  title: "Creamy Italian Pasta",
  category: "Main Dishes",
  description: "This Easy Creamy Italian Pasta is as cozy and familiar as my favorite cardigan. You’ll want to eat it all fall and winter long.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485064122/creamy_italian_pasta_2.jpg",
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
  user_id: 4,
  title: "No-Bake Cheesecake",
  category: "Desserts",
  description: "This is an amazing recipe that I just threw together one day. Everyone loves it so much, it doesn't last long. This is good with any kind of canned or fresh fruit.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485064376/no_bake_cheesecake_2.jpg",
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
  user_id: 3,
  title: "Vanilla Ice Cream",
  category: "Desserts",
  description: "Use this easy recipe to make vanilla ice cream, or add your favorite flavors to it.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485064601/ice_cream.jpg",
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
  user_id: 10,
  title: "Buffalo Chicken Wings",
  category: "Appetizers",
  description: "Let your palate fly away on wings of fire - easy, spicy buffalo wings!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485064708/chicken_wings.jpg",
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
user_id: 6,
title: "Bread Pudding",
category: "Desserts",
description: "My family LOVES bread pudding, and this recipe is one that I have fine tuned to their taste It's great for breakfast or dessert and is delicious with milk poured on top! Enjoy!",
image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485064891/bread_pudding.jpg",
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
      user_id: 1,
      title: "Curried Coconut Chicken",
      category: "Main Dishes",
      description: "Curried chicken simmered in coconut milk and tomatoes makes for a mouthwatering hint of the tropics! Goes great with rice and vegetables.",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485064958/curry_coconut_chicken.jpg",
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
user_id: 8,
title: "Flan",
category: "Desserts",
description: "This is a quick and easy baked flan recipe that is prepared in the blender. It's great served warm or cold and has a creamy texture like custard. Slice the flan and spoon a little of the melted sugar onto the top of the slice.",
image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485065090/flan_2.jpg",
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
  user_id: 2,
  title: "3-Ingredient Crock-Pot Chicken Tacos",
  category: "Main Dishes",
  description: "In just five minutes, these delicious chicken tacos are in the crock-pot and cooking away! Ridiculously easy and sure to become your go-to lifesaver!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485065302/chicken_tacos.jpg",
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
user_id: 4,
title: "Soft Oatmeal Cookies",
category: "Desserts",
description: "These oatmeal cookies are very moist with a good flavor. Add a cup of raisins or nuts if you desire.",
image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485065393/oatmeal_cookies.jpg",
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
  user_id: 7,
  title: "Classic Meatloaf",
  category: "Main Dishes",
  description: "The secrets to this meatloaf are fresh, very finely diced vegetables that give it moisture and flavor--and a light touch in mixing together the ingredients. This hearty meatloaf is the perfect meal for cool fall and winter evenings, served with mashed potatoes and simple mushroom gravy.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485065485/meatloaf_2.jpg",
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
      user_id: 10,
      title: "Pan Seared Salmon",
      category: "Main Dishes",
      description: "Simply seasoned with salt and pepper, these salmon fillets are pan seared with capers, and garnished with slices of lemon.",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485065687/pan_seared_salmon.png",
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
user_id: 3,
title: "Old Fashioned Apple Pie",
category: "Desserts",
description: "Apple pie ...so American, so delicious. A true classic. Enjoy!",
image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485065756/apple_pie_2.jpg",
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
      user_id: 9,
      title: "Chicken Enchiladas",
      category: "Main Dishes",
      description: "Quick and easy creamy chicken enchiladas are sure to be a family favorite!",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485066105/chicken_enchiladas.jpg",
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
  user_id: 5,
  title: "Delicious Brownies",
  category: "Desserts",
  description: "Best brownies I've ever had!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485066190/brownie.jpg",
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
      user_id: 6,
      title: "Sirloin Steak with Garlic Butter",
      category: "Main Dishes",
      description: "I have never tasted any other steak that came even close to the ones made with this recipe. If you are having steak, don't skimp on flavor to save a few calories. The butter makes this steak melt in your mouth wonderful.",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485066377/steak_2.jpg",
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
  user_id: 2,
  title: "Bananas Foster",
  category: "Desserts",
  description: "Bananas sliced in a warm cinnamon and caramel sauce with rum. Serve over ice cream!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485067376/banana_foster.jpg",
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
      user_id: 8,
      title: "Cranberry Spinach Salad",
      category: "Main Dishes",
      description: "Everyone I have made this for RAVES about it! It's different and so easy to make!",
      image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485067474/cranberry_spinach_salad.jpg",
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

Recipe.create(
  user_id: 1,
  title: "Chocolate Chip Cookie",
  category: "Desserts",
  description: "Perfectly baked chocolate chip cookies for everyone to enjoy!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485067692/chocolate_chip_cookies.jpg",
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
  user_id: 3,
  title: "Sloppy Joes",
  category: "Main Dishes",
  description: "This is the recipe my mother used for sloppy joes and it always gets compliments!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485067934/sloppy_joes.jpg",
  ingredients: ["1 pound lean ground beef",
                "1/4 cup chopped onion",
                "1/4 cup chopped green bell pepper",
                "1/2 teaspoon garlic powder",
                "1 teaspoon prepared yellow mustard",
                "3/4 cup ketchup",
                "3 teaspoons brown sugar",
                "salt to taste",
                "ground black pepper to taste"],
  directions: ["In a medium skillet over medium heat, brown the ground beef, onion, and green pepper; drain off liquids.",
               "Stir in the garlic powder, mustard, ketchup, and brown sugar; mix thoroughly. Reduce heat, and simmer for 30 minutes. Season with salt and pepper."]
)

Recipe.create(
  user_id: 9,
  title: "Best Hamburger Ever",
  category: "Main Dishes",
  description: "These burgers are the hit of my town. All my friends come over every weekend just for these burgers. With a little bit of basil leaves, and some olive oil, you will drooling all over yourself while you eat these.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068086/hamburger.jpg",
  ingredients: ["1 pound ground beef",
                "2 cloves garlic, minced",
                "2 tablespoons extra virgin olive oil",
                "1 1/2 teaspoons salt",
                "1 teaspoon freshly ground black pepper",
                "1/2 teaspoon dried basil leaves",
                "4 hamburger buns, split"],
  directions: ["Preheat an outdoor grill for high heat. Mix together the ground beef, garlic, olive oil, salt, pepper, and basil. Divide into four balls, and flatten into patties.",
               "Cook the patties for about 3 to 5 minutes on each side, or to desired doneness. The internal temperature should be at least 160 degrees F (70 degrees C). Remove from grill and place onto hamburger buns. Top with desired toppings and condiments."]
)

Recipe.create(
  user_id: 1,
  title: "Juicy Roasted Chicken",
  category: "Main Dishes",
  description: "I never have had a chicken this juicy before; this little trick works and makes the people eating it go silent. It's funny. We nibble on the celery after.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068155/roasted_chicken.jpg",
  ingredients: ["1 (3 pound) whole chicken, giblets removed",
                "salt and black pepper to taste",
                "1 tablespoon onion powder, or to taste",
                "1/2 cup margarine, divided",
                "1 stalk celery, leaves removed"],
  directions: ["Preheat oven to 350 degrees F (175 degrees C).",
              "Place chicken in a roasting pan, and season generously inside and out with salt and pepper. Sprinkle inside and out with onion powder. Place 3 tablespoons margarine in the chicken cavity. Arrange dollops of the remaining margarine around the chicken's exterior. Cut the celery into 3 or 4 pieces, and place in the chicken cavity.",
              "Bake uncovered 1 hour and 15 minutes in the preheated oven, to a minimum internal temperature of 180 degrees F (82 degrees C). Remove from heat, and baste with melted margarine and drippings. Cover with aluminum foil, and allow to rest about 30 minutes before serving."]
)

Recipe.create(
  user_id: 4,
  title: "Beef Stroganoff",
  category: "Main Dishes",
  description: "I have been making this recipe for over 20 years. This can be served over either rice or noodles. A little work but worth the effort.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068213/beef_stroganoff.jpg",
  ingredients: ["1 pound cubed beef stew meat",
                "1 (10.75 ounce) can condensed golden mushroom soup",
                "1/2 cup chopped onion",
                "1 tablespoon Worcestershire sauce",
                "1/4 cup water",
                "4 ounces cream cheese"],
  directions: ["In a slow cooker, combine the meat, soup, onion, Worcestershire sauce and water.",
                "Cook on Low setting for 8 hours, or on High setting for about 5 hours. Stir in cream cheese just before serving."]
)

Recipe.create(
  user_id: 6,
  title: "Crispy Fried Chicken",
  category: "Main Dishes",
  description: "I experimented for many years before developing this recipe. It's bits and pieces of hints I had heard over the years. I have had many compliments on this chicken. Most of this recipe is dependant on your own taste. It's more a matter of preparation and cooking method!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068274/fried_chicken.jpg",
  ingredients: ["1 (4 pound) chicken, cut into pieces",
                "1 cup buttermilk",
                "2 cups all-purpose flour for coating",
                "1 teaspoon paprika",
                "salt and pepper to taste",
                "2 quarts vegetable oil for frying"],
  directions: ["Take your cut up chicken pieces and skin them if you prefer. Put the flour in a large plastic bag (let the amount of chicken you are cooking dictate the amount of flour you use). Season the flour with paprika, salt and pepper to taste (paprika helps to brown the chicken).",
                "Dip chicken pieces in buttermilk then, a few at a time, put them in the bag with the flour, seal the bag and shake to coat well. Place the coated chicken on a cookie sheet or tray, and cover with a clean dish towel or waxed paper. LET SIT UNTIL THE FLOUR IS OF A PASTE-LIKE CONSISTENCY. THIS IS CRUCIAL!",
                "Fill a large skillet (cast iron is best) about 1/3 to 1/2 full with vegetable oil. Heat until VERY hot. Put in as many chicken pieces as the skillet can hold. Brown the chicken in HOT oil on both sides. When browned, reduce heat and cover skillet; let cook for 30 minutes (the chicken will be cooked through but not crispy). Remove cover, raise heat again and continue to fry until crispy.",
                "Drain the fried chicken on paper towels. Depending on how much chicken you have, you may have to fry in a few shifts. Keep the finished chicken in a slightly warm oven while preparing the rest."]
)

Recipe.create(
  user_id: 7,
  title: "Chicken Fried Rice",
  category: "Main Dishes",
  description: "Chicken, rice, soy sauce and shredded egg stir fried together. This is a very simple recipe. It is easy, but tasty! Note: Never use rice that you have just cooked.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068343/chicken_fried_rice.jpg",
  ingredients: ["1 egg",
                "1 tablespoon water",
                "1 tablespoon butter",
                "1 tablespoon vegetable oil",
                "1 onion, chopped",
                "2 cups cooked white rice, cold",
                "2 tablespoons soy sauce",
                "1 teaspoon ground black pepper",
                "1 cup cooked, chopped chicken meat"],
  directions: ["In a small bowl, beat egg with water. Melt butter in a large skillet over medium low heat. Add egg and leave flat for 1 to 2 minutes. Remove from skillet and cut into shreds.",
                "Heat oil in same skillet; add onion and saute until soft. Then add rice, soy sauce, pepper and chicken. Stir fry together for about 5 minutes, then stir in egg. Serve hot."]
)

Recipe.create(
  user_id: 8,
  title: "Baby Back Ribs",
  category: "Main Dishes",
  description: "These are tender and the meat falls right off the bone. Generally, people think of baby back ribs as a meal they would only order when at a restaurant, but they are so easy to make at home. This recipe could not be any more simple.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068399/baby_back_ribs.jpg",
  ingredients: ["2 pounds pork baby back ribs",
                "1 (18 ounce) bottle barbecue sauce"],
  directions: ["Tear off 4 pieces of aluminum foil big enough to enclose each portion of ribs. Spray each piece of foil with vegetable cooking spray. Brush the ribs liberally with barbeque sauce and place each portion in its own piece of foil. Wrap tightly and refrigerate for at least 8 hours, or overnight.",
                "Preheat oven to 300 degrees F (150 degrees C).",
                "Bake ribs wrapped tightly in the foil at 300 degrees F (150 degrees C) for 2 1/2 hours. Remove from foil and add more sauce, if desired."]
)

Recipe.create(
  user_id: 9,
  title: "Macaroni and Cheese",
  category: "Main Dishes",
  description: "The cheesiest and easiest recipe I know.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068519/macroni_and_cheese.jpg",
  ingredients: ["1 1/2 cups uncooked elbow macaroni",
                "1/4 cup butter",
                "2 tablespoons all-purpose flour",
                "1 teaspoon mustard powder",
                "1 teaspoon ground black pepper",
                "2 cups milk",
                "8 ounces American cheese, cubed",
                "8 ounces processed cheese food, cubed",
                "1/4 cup seasoned dry bread crumbs"],
  directions: ["Preheat oven to 400 degrees F (205 degrees C). Butter a 1 1/2 quart casserole dish. Bring a saucepan of lightly salted water to a boil. Add macaroni, and cook until not quite done, about 6 minutes. Drain.",
                "In a separate saucepan, melt the butter over medium heat. Blend in the flour, mustard powder, and pepper until smooth. Slowly stir in the milk, beating out any lumps. Add the American and processed cheeses, and stir constantly until the sauce is thick and smooth.",
                "Drain noodles, and stir them into the cheese sauce. Transfer the mixture to the prepared casserole dish. Sprinkle bread crumbs over the top.",
                "Cover the dish, and bake for 20 to 25 minutes, or until sauce is thick and bubbly."]
)

Recipe.create(
  user_id: 10,
  title: "Honey Glazed Ham",
  category: "Main Dishes",
  description: "This ham tastes very much like the famous honey baked ham but costs much less, and there's no need to fight the crowds at holiday time. You can even buy the ham presliced to make it easier and more like the original. It is very good.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068669/honey_glazed_ham.jpg",
  ingredients: ["1 (5 pound) ready-to-eat ham",
                "1/4 cup whole cloves",
                "1/4 cup dark corn syrup",
                "2 cups honey 2/3 cup butter"],
  directions: ["Preheat oven to 325 degrees F (165 degrees C).",
                "Score ham, and stud with the whole cloves. Place ham in foil lined pan.",
                "In the top half of a double boiler, heat the corn syrup, honey and butter. Keep glaze warm while baking ham.",
                "Brush glaze over ham, and bake for 1 hour and 15 minutes in the preheated oven. Baste ham every 10 to 15 minutes with the honey glaze. During the last 4 to 5 minutes of baking, turn on broiler to caramelize the glaze. Remove from oven, and let sit a few minutes before serving."]
)

Recipe.create(
  user_id: 2,
  title: "Buffalo Style Chicken Pizza",
  category: "Main Dishes",
  description: "Pizza with a little kick of buffalo wing flavor! Have your pizza and wings together!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068833/buffalo_chicken_pizza.jpg",
  ingredients: ["3 skinless, boneless chicken breast halves - cooked and cubed",
                "2 tablespoons butter, melted",
                "1 (2 ounce) bottle hot sauce",
                "1 (8 ounce) bottle blue cheese salad dressing",
                "1 (16 inch) prepared pizza crust",
                "1 (8 ounce) package shredded mozzarella cheese"],
  directions: ["Preheat oven to 425 degrees F (220 degrees C).",
                "In a medium bowl combine the cubed chicken, melted butter and hot sauce. Mix well. Spread whole bottle of salad dressing over crust, then top with chicken mixture and sprinkle with shredded cheese.",
                "Bake in preheated oven until crust is golden brown and cheese is bubbly, about 5 to 10 minutes. Let set a few minutes before slicing, and serve."]
)

Recipe.create(
  user_id: 3,
  title: "Spinach Quiche",
  category: "Breakfast",
  description: "I serve this in the summer for brunch with a side of sausage links and a fresh fruit bowl!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485068926/spinach_quiche.jpg",
  ingredients: ["1 tablespoon vegetable oil",
                "1 onion, chopped",
                "1 (10 ounce) package frozen chopped spinach, thawed and drained",
                "5 eggs, beaten",
                "3 cups shredded Muenster cheese",
                "1/4 teaspoon salt",
                "1/8 teaspoon ground black pepper"],
  directions: ["Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9 inch pie pan.",
                "Heat oil in a large skillet over medium-high heat. Add onions and cook, stirring occasionally, until onions are soft. Stir in spinach and continue cooking until excess moisture has evaporated.",
                "In a large bowl, combine eggs, cheese, salt and pepper. Add spinach mixture and stir to blend. Scoop into prepared pie pan.",
                "Bake in preheated oven until eggs have set, about 30 minutes. Let cool for 10 minutes before serving."]
)

Recipe.create(
  user_id: 1,
  title: "Fluffy Pancakes",
  category: "Breakfast",
  description: "Tall and fluffy. These pancakes are just right. Topped with strawberries and whipped cream, they are impossible to resist.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485069046/fluffy_pancakes.jpg",
  ingredients: ["3/4 cup milk",
                "2 tablespoons white vinegar",
                "1 cup all-purpose flour",
                "2 tablespoons white sugar",
                "1 teaspoon baking powder",
                "1/2 teaspoon baking soda",
                "1/2 teaspoon salt",
                "1 egg",
                "2 tablespoons butter, melted",
                "cooking spray"],
  directions: ["Combine milk with vinegar in a medium bowl and set aside for 5 minutes to sour.",
                "Combine flour, sugar, baking powder, baking soda, and salt in a large mixing bowl. Whisk egg and butter into \"soured\" milk. Pour the flour mixture into the wet ingredients and whisk until lumps are gone.",
                "Heat a large skillet over medium heat, and coat with cooking spray. Pour 1/4 cupfuls of batter onto the skillet, and cook until bubbles appear on the surface. Flip with a spatula, and cook until browned on the other side."]
)

Recipe.create(
  user_id: 4,
  title: "Mexican Breakfast Tacos",
  category: "Breakfast",
  description: "Quick Easy and Delicious! I've grown to LOVE this breakfast. If you like spicy food, you will love this.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485069206/breakfast_tacos.jpg",
  ingredients: ["6 ounces chorizo sausage",
                "8 (6 inch) corn tortillas",
                "6 eggs",
                "1/4 cup milk",
                "1/2 teaspoon pepper",
                "1/2 teaspoon salt",
                "1 cup shredded Monterey Jack cheese",
                "1 dash hot pepper sauce or to taste",
                "1/2 cup salsa"],
  directions: ["Crumble the sausage into a skillet over medium-high heat. Cook and stir until evenly brown. Set aside.",
                "Heat one skillet over medium heat, and heat another skillet over high heat. The skillet over high heat is for warming tortillas. In a medium bowl, whisk together the eggs, milk, salt and pepper. Spray the medium heat skillet with some cooking spray, and pour in the eggs. Cook and stir until almost firm. Add the sausage, and continue cooking and stirring until firm.",
                "Meanwhile, warm tortillas for about 45 seconds per side in the other skillet, so they are hot and crispy on the edges, but still pliable.",
                "Sprinkle a little shredded cheese onto each tortilla while it is still hot. Top with some of the scrambled egg and sausage, then add hot pepper sauce and salsa to your liking."]
)

Recipe.create(
  user_id: 5,
  title: "French Toast",
  category: "Breakfast",
  description: "This French toast recipe is different because it uses flour. I have given it to some friends and they've all liked it better than the French toast they usually make!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485069426/french_toast.jpg",
  ingredients: ["1/4 cup all-purpose flour",
                "1 cup milk",
                "1 pinch salt",
                "3 eggs",
                "1/2 teaspoon ground cinnamon",
                "1 teaspoon vanilla extract",
                "1 tablespoon white sugar",
                "12 thick slices bread"],
  directions: ["Measure flour into a large mixing bowl. Slowly whisk in the milk. Whisk in the salt, eggs, cinnamon, vanilla extract and sugar until smooth.",
                "Heat a lightly oiled griddle or frying pan over medium heat.",
                "Soak bread slices in mixture until saturated. Cook bread on each side until golden brown. Serve hot."]
)

Recipe.create(
  user_id: 6,
  title: "Strawberry Oatmeal Breakfast Smoothie",
  category: "Breakfast",
  description: "This is a fast vegan smoothie with a deep pink color and a rich, creamy texture. VERY filling, and perfect for people in a rush in the morning. You don't have to give up a good breakfast when it's this fast to make!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485069541/strawberry_smoothie.jpg",
  ingredients: ["1 cup soy milk",
                "1/2 cup rolled oats",
                "1 banana, broken into chunks",
                "14 frozen strawberries ",
                "1/2 teaspoon vanilla extract ",
                "1 1/2 teaspoons white sugar"],
  directions: ["In a blender, combine soy milk, oats, banana and strawberries. Add vanilla and sugar if desired. Blend until smooth. Pour into glasses and serve."]
)

Recipe.create(
  user_id: 7,
  title: "Banana Bread",
  category: "Breakfast",
  description: "My family lives for banana bread, and they all say this recipe is heaven!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485069605/banana_bread.jpg",
  ingredients: ["5 very ripe bananas",
                "4 eggs",
                "1 cup shortening",
                "2 1/2 cups white sugar",
                "1 tablespoon vanilla extract",
                "3 1/2 cups all-purpose flour",
                "2 teaspoons baking soda",
                "1 teaspoon salt"],
  directions: ["Preheat oven to 300 degrees F (150 degrees C). Grease 2 - 9x5 inch loaf pans. In a medium bowl, mash bananas and stir in the eggs until well blended. Set aside.",
                "In large bowl, beat shortening and gradually add sugar. Stir in vanilla and banana mixture. Whisk together flour, baking soda, and salt; blend into batter. Add walnuts if desired. Divide between the prepared pans.",
                "Bake for 1 hour 15 minutes in the preheated oven, or until a toothpick inserted into the center of the loaf comes out clean."]
)

Recipe.create(
  user_id: 8,
  title: "Scrambled Eggs Done Right",
  category: "Breakfast",
  description: "The right way to scramble eggs. There is more to just mixing eggs and cooking! This will make a believer out of you.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485069675/scrambled_eggs.jpg",
  ingredients: ["2 eggs",
                "1 teaspoon mayonnaise or salad dressing",
                "1 teaspoon water (optional) ",
                "1 teaspoon margarine or butter ",
                "salt and pepper to taste (optional)"],
  directions: ["In a cup or small bowl, whisk together the eggs, mayonnaise and water using a fork. Melt margarine in a skillet over low heat. Pour in the eggs, and stir constantly as they cook. Remove the eggs to a plate when they are set, but still moist. Do not over cook. Never add salt or pepper until eggs are on plate, but these are also good without."]
)

Recipe.create(
  user_id: 9,
  title: "Classic Waffles",
  category: "Breakfast",
  description: "A lovely, crispy waffle perfect for the morning.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485069750/waffles_2.jpg",
  ingredients: ["2 cups all-purpose flour",
                "1 teaspoon salt",
                "4 teaspoons baking powder",
                "2 tablespoons white sugar",
                "2 eggs",
                "1 1/2 cups warm milk",
                "1/3 cup butter, melted",
                "1 teaspoon vanilla extract"],
  directions: ["In a large bowl, mix together flour, salt, baking powder and sugar; set aside. Preheat waffle iron to desired temperature.",
                "In a separate bowl, beat the eggs. Stir in the milk, butter and vanilla. Pour the milk mixture into the flour mixture; beat until blended.",
                "Ladle the batter into a preheated waffle iron. Cook the waffles until golden and crisp. Serve immediately."]
)

Recipe.create(
  user_id: 10,
  title: "Breakfast Sausage Casserole",
  category: "Breakfast",
  description: "It is so delicious, and everyone enjoys it! When I double the recipe I ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485069889/breakfast_sausage_casserole.jpg",
  ingredients: ["1 pound ground pork sausage",
                "1 teaspoon mustard powder",
                "1/2 teaspoon salt",
                "4 eggs, beaten",
                "2 cups milk",
                "6 slices white bread, toasted and cut into cubes",
                "8 ounces mild Cheddar cheese, shredded"],
  directions: ["Crumble sausage into a medium skillet. Cook over medium heat until evenly brown; drain.",
                "In a medium bowl, mix together mustard powder, salt, eggs and milk. Add the sausage, bread cubes, and cheese, and stir to coat evenly. Pour into a greased 9x13 inch baking dish. Cover, and chill in the refrigerator for 8 hours, or overnight.",
                "Preheat oven to 350 degrees F (175 degrees C).",
                "Cover, and bake 45 to 60 minutes. Uncover, and reduce temperature to 325 degrees F (165 degrees C). Bake for an additional 30 minutes, or until set."]
)

Recipe.create(
  user_id: 2,
  title: "Antipasto Kabobs",
  category: "Appetizers",
  description: "These do-ahead appetizers are always a hit.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070044/antipasto_kebobs.jpg",
  ingredients: ["1 package (9 ounces) refrigerated cheese tortellini",
                "40 pimiento-stuffed olives",
                "40 large pitted ripe olives",
                "3/4 cup Italian salad dressing",
                "40 thin slices pepperoni",
                "20 thin slices hard salami, halved",
                "Fresh parsley sprigs, optional"],
  directions: ["Cook tortellini according to package directions; drain and rinse in cold water. In a large resealable plastic bag, combine the tortellini, olives and salad dressing. Seal bag and turn to coat; refrigerate for 4 hours or overnight.",
                "Drain and discard marinade. For each appetizer, thread a stuffed olive, folded pepperoni slice, tortellini, folded salami piece, ripe olive and parsley sprig if desired on a toothpick or short skewer. "]
)

Recipe.create(
  user_id: 3,
  title: "Chocolate Chip Cheese Balls",
  category: "Appetizers",
  description: "Your guests are in for a sweet surprise when they try this unusual cheese ball…it tastes just like cookie dough! Rolled in chopped pecans, the chip-studded spread is wonderful on regular or chocolate graham crackers. I especially like it because it can be assembled in a wink. ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070106/chocolate_cheeseballs.jpg",
  ingredients: ["1 package (8 ounces) cream cheese, softened",
                "1/2 cup butter, softened",
                "1/4 teaspoon vanilla extract",
                "3/4 cup confectioners' sugar",
                "2 tablespoons brown sugar",
                "3/4 cup miniature semisweet chocolate chips",
                "3/4 cup finely chopped pecans",
                "Graham crackers"],
  directions: ["Beat cream cheese, butter and vanilla until smooth; beat in sugars just until blended. Stir in chocolate chips. Refrigerate, covered, until firm enough to shape, about 2 hours.",
                "Place mixture on a large sheet of plastic wrap; shape into a ball. Refrigerate, wrapped, at least 1 hour.",
                "To serve, roll cheese ball in pecans. Serve with graham crackers. Yield: 16 servings (2 tablespoons each)."]
)

Recipe.create(
  user_id: 4,
  title: "Sweet & Spicy Jalapeno Poppers",
  category: "Appetizers",
  description: "There’s no faster way to get a party started than with these bacon-wrapped poppers. Make them ahead and bake just before serving. Even the hot pepper intolerant will love them.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070184/jalapeno_poppers.jpg",
  ingredients: ["6 jalapeno peppers",
                "4 ounces cream cheese, softened",
                "2 tablespoons shredded cheddar cheese",
                "6 bacon strips, halved widthwise",
                "1/4 cup packed brown sugar",
                "1 tablespoon chili seasoning mix"],
  directions: ["Cut jalapenos in half lengthwise and remove seeds; set aside. In a small bowl, beat cheeses until blended. Spoon into pepper halves. Wrap a half-strip of bacon around each pepper half.",
                "Combine brown sugar and chili seasoning; coat peppers with sugar mixture. Place in a greased 15x10x1-in. baking pan.",
                "Bake at 350° for 18-20 minutes or until bacon is firm. Yield: 1 dozen."]
)

Recipe.create(
  user_id: 5,
  title: "Appetizer Tortilla Pinwheels",
  category: "Appetizers",
  description: "A friend gave me this recipe, and whenever I serve these pretty and delicious appetizers, people ask me for the recipe, too! Besides being attractive and tasty, the pinwheels can be made ahead of time and sliced just before serving, leaving you time for other last-minute party preparations. ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070246/tortilla_pinwheels.jpg",
  ingredients: ["1 package (8 ounces) cream cheese, softened",
                "1 cup shredded cheddar cheese",
                "1 cup (8 ounces) sour cream",
                "1 can (4-1/4 ounces) chopped ripe olives",
                "1 can (4 ounces) chopped green chilies, well drained",
                "1/2 cup chopped green onions",
                "Garlic powder to taste",
                "Seasoned salt to taste",
                "5 flour tortillas (10 inches)",
                "Salsa, optional"],
  directions: ["Beat cream cheese, cheese and sour cream until blended. Stir in olives, green chilies, green onions and seasonings.",
                "Spread over tortillas; roll up tightly. Wrap each in plastic, twisting ends to seal; refrigerate several hours.",
                "Unwrap. Cut into 1/2- to 3/4-in. slices, using a serrated knife. If desired, serve with salsa."]
)

Recipe.create(
  user_id: 6,
  title: "BLT Bites",
  category: "Appetizers",
  description: "These quick hors d'oeuvres may be mini, but their bacon and tomato flavor is full size. I serve them at parties, brunches and picnics, and they're always a hit...even my kids love them. ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070302/blt_bites.jpg",
  ingredients: ["16 to 20 cherry tomatoes",
                "1 pound sliced bacon, cooked and crumbled",
                "1/2 cup mayonnaise",
                "1/3 cup chopped green onions",
                "3 tablespoons grated Parmesan cheese",
                "2 tablespoons snipped fresh parsley"],
  directions: ["Cut a thin slice off of each tomato top. Scoop out and discard pulp. Invert the tomatoes on a paper towel to drain.",
                "In a small bowl, combine the remaining ingredients. Spoon into tomatoes. Refrigerate for several hours. Yield: 16-20 appetizers."]
)

Recipe.create(
  user_id: 1,
  title: "Savory Party Bread",
  category: "Appetizers",
  description: "It's impossible to stop nibbling on warm pieces of this cheesy, oniony bread. The sliced loaf fans out for a fun presentation.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070362/party_bread.jpg",
  ingredients: ["1 unsliced round loaf sourdough bread (1 pound)",
                "1 pound Monterey Jack cheese",
                "1/2 cup butter, melted",
                "1/2 cup chopped green onions",
                "2 to 3 teaspoons poppy seeds"],
  directions: ["Preheat oven to 350°. Cut bread widthwise into 1-in. slices to within 1/2 in. of bottom of loaf. Repeat cuts in opposite direction. Cut cheese into 1/4-in. slices; cut slices into small pieces. Place cheese in cuts.",
                "In a small bowl, mix butter, green onions and poppy seeds; drizzle over bread. Wrap in foil; place on a baking sheet. Bake 15 minutes. Unwrap; bake 10 minutes longer or until cheese is melted."]
)

Recipe.create(
  user_id: 7,
  title: "Cranberry Chili Meatballs",
  category: "Appetizers",
  description: "Using packaged meatballs helps save time in the kitchen and they are just as tasty as homemade. My friends look forward to enjoying these meatballs at our holiday gatherings and there are never any leftovers! ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070420/cranberry_meatballs.jpg",
  ingredients: ["1 can (14 ounces) jellied cranberry sauce",
                "1 bottle (12 ounces) chili sauce",
                "3/4 cup packed brown sugar",
                "1/2 teaspoon chili powder",
                "1/2 teaspoon ground cumin",
                "/4 teaspoon cayenne pepper",
                "1 package (32 ounces) frozen fully cooked homestyle meatballs, thawed"],
  directions: ["In a large saucepan over medium heat, combine the first six ingredients; stir until sugar is dissolved. Add meatballs; cook for 20-25 minutes or until heated through, stirring occasionally."]
)

Recipe.create(
  user_id: 8,
  title: "Cheesesteak Egg Rolls",
  category: "Appetizers",
  description: "I tried this recipe at a nearby restaurant and fell in love! The first attempt to make them at home was a success! Such an easy and delicious appetizer.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070498/cheesesteak_eggrolls.jpg",
  ingredients: ["1 tablespoon vegetable oil",
                "1 onion, chopped",
                "1 (12.5 ounce) package frozen sandwich steak meat",
                "1 (14 ounce) package egg roll wrappers",
                "4 slices American cheese, halved",
                "2 cups oil for frying, or as needed",
                "1/4 cup ketchup"],
  directions: ["Heat skillet with the tablespoon oil over medium heat. Add onion; cook and stir until onion is translucent, about 5 minutes. Break frozen steak pieces into skillet; cook and stir until steak is no longer pink, about 10 minutes. Remove from heat and set aside.",
                "Arrange egg roll wrappers on a flat surface; place a half slice of cheese on each one. Layer an equal amount of steak mixture on top of each cheese slice. Roll up egg rolls according to package directions, and seal edges, wetting with water if necessary.",
                "Heat 1 inch of oil in a large skillet, or preheat a deep-fryer to 375 degrees F (190 degrees C).",
                "Fry the rolls in the hot oil until golden brown on all sides, about 5 minutes. Remove; drain on paper towels. Serve warm with ketchup for dipping."]
)

Recipe.create(
  user_id: 9,
  title: "Mexican Shrimp Cocktail",
  category: "Appetizers",
  description: "I first tried something similar to this in San Antonio and could never find a recipe that really recaptured what I had there. I experimented and finally came up with this. Anyone who has tried it has begged for the recipe. Try it with tortilla chips!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070577/shrimp_cocktail.jpg",
  ingredients: ["2 pounds cooked shrimp, peeled and deveined",
                "1 tablespoon crushed garlic ",
                "1/2 cup finely chopped red onion ",
                "1/4 cup fresh cilantro, chopped ",
                "1 1/2 cups tomato and clam juice cocktail ",
                "1/4 cup ketchup ",
                "1/4 cup fresh lime juice ",
                "1 teaspoon hot pepper sauce, or to taste ",
                "1/4 cup prepared horseradish ",
                "salt to taste ",
                "1 ripe avocado - peeled, pitted and chopped"],
  directions: ["Place the shrimp in a large bowl. Stir garlic, red onion, and cilantro. Mix in tomato and clam juice cocktail, ketchup, lime juice, hot pepper sauce, and horseradish. Season with salt. Gently stir in avocado. Cover, and refrigerate 2 to 3 hours. Serve in one large bowl or ladle into individual bowls."]
)

Recipe.create(
  user_id: 1,
  title: "Toasted Garlic Bread",
  category: "Appetizers",
  description: "Quick and scrumptious garlic bread that will complement any Italian meal. Melted mozzarella is optional, but delicious!",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070738/garlic_bread.jpg",
  ingredients: ["1 (1 pound) loaf Italian bread",
                "5 tablespoons butter, softened",
                "2 teaspoons extra virgin olive oil",
                "3 cloves garlic, crushed",
                "1 teaspoon dried oregano",
                "salt and pepper to taste",
                "1 cup shredded mozzarella cheese"],
  directions: ["Preheat the broiler.",
              "Cut the bread into slices 1 to 2 inches thick.",
              "On a medium baking sheet, arrange the slices evenly and broil 5 minutes, or until slightly brown. Check frequently so they do not burn.",
              "Remove from broiler. Top with cheese and return to broiler 2 to 3 minutes, until cheese is slightly brown and melted. Serve at once."]
)

Recipe.create(
  user_id: 10,
  title: "Crab Cakes",
  category: "Appetizers",
  description: "These are the fastest, easiest crab cakes I have ever made and some of the best I have ever eaten! Serve with coarse mustard on the plate or your favorite mustard sauce.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070840/crab_cakes.jpg",
  ingredients: ["1 egg",
                "3 tablespoons mayonnaise",
                "4 teaspoons lemon juice",
                "1/8 teaspoon red pepper flakes ",
                "1 teaspoon dried tarragon ",
                "1 tablespoon minced green onions ",
                "8 ounces crabmeat ",
                "1/2 cup crushed buttery round crackers ",
                "1 tablespoon butter"],
  directions: ["In a medium bowl, whisk together egg, mayonnaise, lemon juice, red pepper flakes, tarragon, and scallions. Gently stir in crabmeat, being careful not to break up meat. Gradually mix in cracker crumbs, adding until desired consistency is achieved.",
                "Heat butter in a skillet over medium heat. Form crab mixture into 4 patties. Place patties in skillet, and cook until golden brown, about 5 to 6 minutes on each side."]
)

Recipe.create(
  user_id: 2,
  title: "Au Gratin Potatoes",
  category: "Sides",
  description: "These cheesy potatoes are always welcome at our dinner table, and they're so simple to make. A perfect complement to ham, this homey side dish also goes well with pork, chicken and other entrees.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070898/au_gratin_potatoes.jpg",
  ingredients: ["3 tablespoons butter",
                "3 tablespoons all-purpose flour",
                "1-1/2 teaspoons salt",
                "1/8 teaspoon pepper",
                "2 cups 2% milk",
                "1 cup (4 ounces) shredded cheddar cheese",
                "5 cups thinly sliced peeled potatoes (about 6 medium)",
                "1/2 cup chopped onion"],
  directions: ["Preheat oven to 350°. In a large saucepan, melt butter over low heat. Stir in flour, salt and pepper until smooth. Gradually add milk. Bring to a boil; cook and stir 2 minutes or until thickened. Remove from heat; stir in cheese until melted. Add potatoes and onion.",
                "Transfer to a greased 2-qt. baking dish. Cover and bake 1 hour. Uncover; bake 30-40 minutes or until the potatoes are tender."]
)

Recipe.create(
  user_id: 3,
  title: "Garlic Mashed Potatoes ",
  category: "Sides",
  description: "These creamy garlic mashed potatoes are so good, you can serve them plain—no butter or gravy is needed. This is the only way we prepare mashed potatoes. ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485070961/garlic_mashed_potatoes.jpg",
  ingredients: ["8 medium potatoes, quartered",
              "3 garlic cloves, peeled",
              "2 tablespoons butter",
              "1/2 cup fat-free milk, warmed",
              "1/2 teaspoon salt",
              "1/4 cup grated Parmesan cheese"],
  directions: ["Place potatoes and garlic in a large saucepan; cover with water. Bring to a boil. Reduce heat; cover and simmer for 15-20 minutes or until potatoes are very tender.",
              "Drain well. Add the butter, milk and salt; mash. Stir in cheese."]
)

Recipe.create(
  user_id: 4,
  title: "Cheesy Cheddar Broccoli Casserole",
  category: "Sides",
  description: "Everybody who has tried this side dish absolutely raves about it.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485071030/cheddar_broccoli_casserole.jpg",
  ingredients: ["1 can (10-3/4 ounces) condensed cream of mushroom soup, undiluted",
              "1 cup (8 ounces) sour cream",
              "1-1/2 cups shredded sharp cheddar cheese, divided",
              "1 can (6 ounces) french-fried onions, divided",
              "2 packages (16 ounces each) frozen broccoli florets, thawed"],
  directions: ["Preheat oven to 325°. In a large saucepan, combine soup, sour cream, 1 cup cheese and 1-1/4 cups onions; heat through over medium heat, stirring until blended, 4-5 minutes. Stir in broccoli. Transfer to a greased 2-qt. baking dish.",
              "Bake, uncovered, until bubbly, 25-30 minutes. Sprinkle with the remaining cheese and onions. Bake until cheese is melted, 10-15 minutes."]
)

Recipe.create(
  user_id: 5,
  title: "Roasted Asparagus",
  category: "Sides",
  description: "This is especially wonderful when locally grown asparagus is in season and so easy for celebrations because you can serve it hot or cold. ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485071089/roasted_asparagus.jpg",
  ingredients: ["1-1/2 pounds fresh asparagus, trimmed",
              "1-1/2 cups grape tomatoes, halved",
              "3 tablespoons pine nuts",
              "3 tablespoons olive oil, divided",
              "2 garlic cloves, minced",
              "1 teaspoon kosher salt",
              "1/2 teaspoon pepper",
              "1 tablespoon lemon juice",
              "1/3 cup grated Parmesan cheese",
              "1 teaspoon grated lemon peel"],
  directions: ["Preheat oven to 400°. Place the asparagus, tomatoes and pine nuts on a foil-lined 15x10x1-in. baking pan. Mix 2 tablespoons oil, garlic, salt and pepper; add to asparagus and toss to coat.",
              "Bake 15-20 minutes or just until asparagus is tender. Drizzle with remaining oil and the lemon juice; sprinkle with cheese and lemon peel. Toss to combine."]
)

Recipe.create(
  user_id: 6,
  title: "Grilled Mushrooms",
  category: "Sides",
  description: "Mushrooms cooked over hot coals always taste good, but this easy recipe makes the mushrooms taste fantastic.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485071150/grilled_mushrooms.jpg",
  ingredients: ["1/2 pound medium fresh mushrooms",
              "1/4 cup butter, melted",
              "1/2 teaspoon dill weed",
              "1/2 teaspoon garlic salt"],
  directions: ["Thread mushrooms on four metal or soaked wooden skewers. Combine butter, dill and garlic salt; brush over mushrooms.",
              "Grill over medium-high heat for 10-15 minutes or until tender, basting and turning every 5 minutes. "]
)

Recipe.create(
  user_id: 1,
  title: "Three-Bean Baked Beans",
  category: "Sides",
  description: "With ground beef and bacon mixed in, these satisfying beans are a big hit at backyard barbecues and church picnics. I'm always asked to bring my special beans. ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485071305/baked_beans.jpg",
  ingredients: ["1/2 pound ground beef",
              "5 bacon strips, diced",
              "1/2 cup chopped onion",
              "1/3 cup packed brown sugar",
              "1/4 cup sugar",
              "1/4 cup ketchup",
              "1/4 cup barbecue sauce",
              "2 tablespoons molasses",
              "2 tablespoons prepared mustard",
              "/2 teaspoon chili powder",
              "1/2 teaspoon salt",
              "2 cans (16 ounces each) pork and beans, undrained",
              "1 can (16 ounces) butter beans, rinsed and drained",
              "1 can (16 ounces) kidney beans, rinsed and drained"],
  directions: ["Preheat oven to 350°. In a large skillet, cook and crumble beef with bacon and onion over medium heat until no longer pink; drain.",
              "Stir in sugars, ketchup, barbecue sauce, molasses, mustard, chili powder and salt until blended. Stir in beans. Transfer to a greased 2-1/2-qt. baking dish. Bake, covered, until beans reach desired thickness, about 1 hour."]
)

Recipe.create(
  user_id: 7,
  title: "Glazed Carrot Coins",
  category: "Sides",
  description: "These glossy carrots, flavored with orange juice, cinnamon and ginger, are pretty enough for a special meal. ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485071405/carrot_coins.jpg",
  ingredients: ["2 tablespoons butter",
              "2 tablespoons brown sugar",
              "2 tablespoons orange juice",
              "1/4 teaspoon salt",
              "1/4 teaspoon ground ginger",
              "1/8 teaspoon ground cinnamon",
              "6 medium carrots, cut into 1/2-inch slices"],
  directions: ["In a small saucepan, melt butter over medium heat. Stir in the brown sugar, orange juice, salt, ginger and cinnamon. Add the carrots; cover and cook for 20-25 minutes or until tender, stirring occasionally. "]
)

Recipe.create(
  user_id: 8,
  title: "Sweet Potato Fries",
  category: "Sides",
  description: "A local restaurant got me hooked on sweet potato fries. I started making them at home with different seasonings to match the taste. I'm thrilled with the results! ",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485071459/sweet_potato_fries.jpg",
  ingredients: ["3 tablespoons olive oil",
              "1 tablespoon minced fresh rosemary",
              "1 garlic clove, minced",
              "1 teaspoon cornstarch",
              "3/4 teaspoon salt",
              "1/8 teaspoon pepper",
              "3 large sweet potatoes, peeled and cut into 1/4-inch julienned strips (about 2-1/4 pounds)"],
  directions: ["Preheat oven to 425°. In a large resealable plastic bag, combine the first six ingredients. Add sweet potatoes; shake to coat.",
              "arrange in a single layer on two 15x10x1-in. baking pans coated with cooking spray. Bake, uncovered, 30-35 minutes or until tender and lightly browned, turning occasionally."]
)

Recipe.create(
  user_id: 9,
  title: "Creamed Corn",
  category: "Sides",
  description: "Five ingredients are all you'll need for my popular dinner accompaniment. It's wonderful no matter what the occasion is. Try it on a barbecue buffet or holiday menu.",
  image_url: "https://res.cloudinary.com/joycechau/image/upload/v1485071561/creamed_corn.jpg",
  ingredients: ["2 packages (one 16 ounces, one 10 ounces) frozen corn",
              "1 package (8 ounces) cream cheese, softened and cubed",
              "1/4 cup butter, cubed",
              "1 tablespoon sugar",
              "1/2 teaspoon salt"],
  directions: ["In a 3-qt. slow cooker coated with cooking spray, combine all ingredients. Cover and cook on low for 3 to 3-1/2 hours or until cheese is melted and corn is tender. Stir just before serving. "]
)

Favorite.create(user_id: 1, recipe_id: 1)
Favorite.create(user_id: 1, recipe_id: 3)
Favorite.create(user_id: 1, recipe_id: 4)
Favorite.create(user_id: 1, recipe_id: 5)
Favorite.create(user_id: 1, recipe_id: 10)
Favorite.create(user_id: 2, recipe_id: 1)
Favorite.create(user_id: 2, recipe_id: 2)
Favorite.create(user_id: 2, recipe_id: 12)
Favorite.create(user_id: 2, recipe_id: 13)
Favorite.create(user_id: 2, recipe_id: 14)

Review.create(
  user_id: 1,
  recipe_id: 1,
  rating: 5,
  body: "I made this and it was a hit. I substituted a few things in the recipe that I didn't have and it still came out amazing!!! I also paired with with some homemade Spanish Quinoa. YUM!"
)

Review.create(
  user_id: 6,
  recipe_id: 1,
  rating: 5,
  body: "I actually cooked the shrimp with the marinade in a shallow pan. That way the onions and garlic were able to be eaten as well. it was easy and wonderful!"
)

Review.create(
  user_id: 5,
  recipe_id: 1,
  rating: 4,
  body: "maybe better as a salad than a lettuce wrap because the shrimp just fell out of the lettuce, but the shrimp was bursting with flavor!"
)

Review.create(
  user_id: 2,
  recipe_id: 2,
  rating: 5,
  body: "These are the best cupcakes I've ever made! They are extremely rich in flavor and so moist. They taste like they came from a fancy bakery. The recipe is so easy and people will be very impressed and go nuts for them. I wouldn't change a thing!"
)

Review.create(
  user_id: 3,
  recipe_id: 2,
  rating: 5,
  body: "These were a hit with the children in my daughters class. Soft moist melt in the mouth. Yum!"
)

Review.create(
  user_id: 4,
  recipe_id: 2,
  rating: 4,
  body: "This was great! I haven't made many cakes from scratch and found this to be very easy and delicious. I will be making this again for Christmas! Everyone loved it."
)

Review.create(
  user_id: 1,
  recipe_id: 3,
  rating: 5,
  body: "Very good. I was worried that the onion wouldn't be cooked, so I used canned pearl onions, which worked well. I will definitely make this again, although next time I will marinate longer, I didn't think the marinade imparted much of its flavor in only 30 minutes. Even so, I was very happy with the results."
)

Review.create(
  user_id: 8,
  recipe_id: 3,
  rating: 4,
  body: "This was pretty tasty. I made this as a stir fry, adding broccoli, and used the marinade as a sauce. I had to do a chicken version for my husband as he doesn't eat salmon, and he thought it was good too."
)

Review.create(
  user_id: 10,
  recipe_id: 3,
  rating: 5,
  body: "I would give this more stars if I could! WOW! We are from Miami and liken this to our favorite dish at our very favorite seafood restaurant- Captain's Tavern. We made this with grilled (frozen) yellowtail (from a catch 2 weeks ago) and served with reduced marinade on top of the fish. We accompanied it with black beans and rice (just like our favorite restaurant) and- voila!- we had one of the most GOURMET meals we've ever made at home!"
)

Review.create(
  user_id: 6,
  recipe_id: 4,
  rating: 3,
  body: "My husband made the recipe prior to reading the reviews. I agree that it's bland and needed some spicing up. If he makes it again I'm sure he'll be adding some roasted garlic, salt, pepper and Italian seasoning."
)

Review.create(
  user_id: 7,
  recipe_id: 4,
  rating: 4,
  body: "Really yummy and the kids gobbled it up. I did change it a bit to make it a tad healthier. I cooked the chicken with garlic and onions. I used 8oz light cream cheese and almost one whole can of chicken broth and 3/4 finely shredded cheddar cheese for the sauce, It was super yum. You omit the milk, water, and cream of chicken soup. It was GREAT"
)

Review.create(
  user_id: 10,
  recipe_id: 5,
  rating: 4,
  body: "Way too much filling for a 9 inch crust but a tasty recipe nonetheless."
)

Review.create(
  user_id: 9,
  recipe_id: 5,
  rating: 2,
  body: "Bland and lacked flavor"
)

Review.create(
  user_id: 8,
  recipe_id: 6,
  rating: 5,
  body: "YUMMY! This will be the only recipe I will use for vanilla ice cream. It is very rich and creamy! When you scoop it out the ice cream clings to the spoon! I can't wait to try it with other flavors of pudding. I had to scale down the recipe to half and then only 3/4 of it would fit my cuisinart ice cream maker. I used one carton of egg beaters (2 eggs worth) instead of the fresh eggs and I still put in a whole teaspoon of vanilla. It was perfect!"
)

Review.create(
  user_id: 1,
  recipe_id: 6,
  rating: 2,
  body: "This tastes like frozen store-bought pudding, not ice cream. The consistancy after being in the freezer is weirdly stiff yet gooey, like cold playdough. But if you like frozen pudding, you may like it."
)

Review.create(
  user_id: 3,
  recipe_id: 7,
  rating: 4,
  body: "Great complement to any proteins."
)

Review.create(
  user_id: 4,
  recipe_id: 7,
  rating: 3,
  body: "Easy to make but lacked some flavor."
)

Review.create(
  user_id: 3,
  recipe_id: 8,
  rating: 4,
  body: "I liked it and it was easy to make."
)

Review.create(
  user_id: 2,
  recipe_id: 8,
  rating: 5,
  body: "LOVED it!  Will make again!"
)

Review.create(
  user_id: 4,
  recipe_id: 9,
  rating: 4,
  body: "Good but could use some more flavor."
)

Review.create(
  user_id: 5,
  recipe_id: 9,
  rating: 3,
  body: "Just okay."
)

Review.create(
  user_id: 6,
  recipe_id: 10,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 10,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 11,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 11,
  rating: 2,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 12,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 12,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 13,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 1,
  recipe_id: 13,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 2,
  recipe_id: 14,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 3,
  recipe_id: 14,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 15,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 15,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 16,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 16,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 17,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 17,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 18,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 18,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 3,
  recipe_id: 19,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 19,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 20,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 20,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 2,
  recipe_id: 21,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 3,
  recipe_id: 21,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 22,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 22,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 23,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 23,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 24,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 3,
  recipe_id: 24,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 25,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 25,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 2,
  recipe_id: 26,
  rating: 2,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 26,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 27,
  rating: 2,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 27,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 28,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 28,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 29,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 1,
  recipe_id: 29,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 3,
  recipe_id: 30,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 30,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 31,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 31,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 32,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 32,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 33,
  rating: 2,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 33,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 1,
  recipe_id: 34,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 34,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 2,
  recipe_id: 35,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 35,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 3,
  recipe_id: 36,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 2,
  recipe_id: 36,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 37,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 37,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 38,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 38,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 39,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 39,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 40,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 40,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 41,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 41,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 42,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 42,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 43,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 1,
  recipe_id: 43,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 44,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 44,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 45,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 45,
  rating: 2,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 46,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 46,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 47,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 47,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 2,
  recipe_id: 48,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 48,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 49,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 1,
  recipe_id: 49,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 50,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 50,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 51,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 3,
  recipe_id: 51,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 52,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 52,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 53,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 53,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 54,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 54,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 9,
  recipe_id: 55,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 10,
  recipe_id: 55,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 56,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 8,
  recipe_id: 56,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 2,
  recipe_id: 57,
  rating: 4,
  body: ""
)

Review.create(
  user_id: 3,
  recipe_id: 57,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 58,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 4,
  recipe_id: 58,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 6,
  recipe_id: 59,
  rating: 3,
  body: ""
)

Review.create(
  user_id: 7,
  recipe_id: 59,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 1,
  recipe_id: 60,
  rating: 5,
  body: ""
)

Review.create(
  user_id: 5,
  recipe_id: 60,
  rating: 5,
  body: ""
)
