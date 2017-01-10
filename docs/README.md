# SomeRecipes

[Heroku Link](https://dashboard.heroku.com/apps)

[Trello Link](https://trello.com/b/W50yeIRB/somerecipes)

## Minimum Viable Product

SomeRecipes is a web application inspired by AllRecipes built using Ruby on Rails and React/Redux. By the end of Week 9, this app will, at a minimum, satisfy the following criteria with smooth, bug-free navigation, adequate seed data and sufficient CSS styling:

- [ ] A production README
- [ ] Hosting on Heroku
- [ ] New account creation, login, and guest/demo login
- [ ] Viewing, creating, and editing recipes
- [ ] Favorites/likes
- [ ] Reviewing recipes
- [ ] Searching recipes

## Design Docs

- [Wireframes](https://github.com/joycechau/SomeRecipes/tree/master/docs/wireframes)
- [React Components](https://github.com/joycechau/SomeRecipes/blob/master/docs/component-hierarchy.md)
- [API Endpoints](https://github.com/joycechau/SomeRecipes/blob/master/docs/api-endpoints.md)
- [DB Schema](https://github.com/joycechau/SomeRecipes/blob/master/docs/schema.md)
- [Sample State](https://github.com/joycechau/SomeRecipes/blob/master/docs/sample-state.md)


## Implementation Timeline


### Phase 1: Backend setup and Frontend User Authentication (2 days)

**Objective**: Functioning rails project with frontend Auth
* Setup backend auth (user model, users controller, sessions controller)
* Setup frontend auth
  * Create Session util, actions, reducer, store
  * Create React router and session components
  * Create temp HeaderContainer
  * Create SessionForm components and session routes
  * Bootstrap currentUser

### Phase 2: Recipes Model, API, and components (3 days)

**Objective**: Recipes can be created, read, edited, and destroyed through the API
* Create recipes model and controller, add appropriate associations
* Seed database with ~50 recipes and validate that associations work
* Create Recipe util, actions, and reducer
* Create RecipeIndexContainer, RecipeIndexItem, RecipeDetailContainer, and RecipeDetail
* Create Profile Container (add SideBar and SideBarSection)
* Create RecipeFormContainer and RecipeForm  

### Phase 3: Favorites (1 day)

**Objective**: Users can add recipes to their favorites list and favorited recipes can be displayed on profile page
* Create favorites model and controller, add appropriate associations
* Seed database with ~25 favorites and validate that associations work
* Add favorites button to RecipeIndexItem and allow users to view favorites on profile page

### Phase 4: Reviews Model, API, and components (2 days)

**Objective**:  Reviews can be created, edited, and destroyed through the API
* Create reviews model and controller, add appropriate associations
* Seed database with ~15 reviews and validate that associations work
* Create Review util, actions, and reducer
* Create ReviewIndexContainer and ReviewIndexItem
* Create ReviewForm

### Phase 5: Search Results (1 day)

**Objective**: Users can search for specific results
* Add Home logo to HeaderContainer
* Add SearchContainer, SearchBar, and SearchButton to Header
* Adjust Util to allow search params
* Create SearchResultsContainer

### Phase 6: Advanced Styling (1 day)

**Objective**: Improve styling (ie modals) and add category backdrop to home page
* Add homepage background with recipe category modals linked to search results
* Add review form modal

### Bonus Features (TBD)
- [ ] Infinite scrolling
- [ ] Adding videos
- [ ] Allow users to specify whether their recipes can be private or public
