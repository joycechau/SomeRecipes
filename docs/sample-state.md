```javascript
{
	currentUser: {
    id: 1,
    username: 'joyce'
  },
	profileDetail: {
		id: 1,
    username: 'joyce',
    fname: 'Joyce',
    lname: 'Chau',
    profile_url: 'http://profile_pic.png',
    interests: 'desserts, steaks, corgis'
	},
  errors: {
    session: [],
    createRecipe: ["incomplete fields"],
    createReview: ["incomplete fields"]
  },
  recipes: {
    1: {
			id: 1,
      user_id: 1,
      title: 'Cookies',
			image_url: 'http://cookie.png',
      average_rating: 5,
      description: 'Easy to make chocolate chip cookies'
    },
		2: {
			id: 2,
			user_id: 7,
			title: 'Chicken Noodle Soup',
			image_url: 'http://chicken_noodle_soup.png',
			average_rating: 5,
			description: 'Perfect for the winter season!'  
  },
	recipeDetail: {
		id: 1,
		user_id: 1,
		title: 'Cookies',
		image_url: 'http://cookie.png',
		average_rating: 5,
		description: 'Easy to make chocolate chip cookies',
		category: 'desserts',
		ingredients: ['sugar', 'egg', 'flour'],
		directions: ['Mix ingredients', 'Bake'],
		reviews: {
			1: {
				recipe_id: 1,
				user_id: 2,
				rating: 5,
				review: 'Delicious and easy to make!'
			},
			2: {
				recipe_id: 1,
				user_id: 3,
				rating: 4,
				review: 'Good but a little too sweet'
			}
		}
	}
}
```
