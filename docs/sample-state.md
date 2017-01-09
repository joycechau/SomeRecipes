```javascript
{
	currentUser: {
    id: 1,
    username: 'joyce',
    fname: 'Joyce',
    lname: 'Chau',
    profile_url: '',
    interests: ''
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createRecipe: {errors: ["incomplete fields"]}
    createReview: {errors: ["incomplete fields"]}
  },
  recipes: {
    1: {
      user_id: 1,
      title: 'Cookies',
      average_rating: 5,
      category: 'desserts',
      description: 'Easy to make chocolate chip cookies',
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
}
```
