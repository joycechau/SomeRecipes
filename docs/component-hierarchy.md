## Component Hierarchy

#### AuthFormContainer

* AuthForm

#### HomeContainer

* Header
	* Logo/Home
	* Search Container
		* Search Field
		* Search Button
	* Sign Up
	* Log In
	* Demo
	* Logout
* Background Image
	* Suggested recipe links
* RecipeIndex
	* RecipeIndexItem

#### SearchResultsContainer

* Header
	* Logo/Home
	* Search Container
		* Search Field
		* Search Button
	* Logout
* RecipeIndex
	* RecipeIndexItem

#### ProfileContainer

* Header
	* Logo/Home
	* Search Container
		* Search Field
		* Search Button
	* Logout
* Background Image
* Sidebar
* ProfileSection
	* profileForm

#### UserRecipeContainer/FavoriteRecipeContainer

* Header
	* Logo/Home
	* Search Container
		* Search Field
		* Search Button
	* Logout
* Background Image
* Sidebar
* RecipeIndex
	* RecipeIndexItem

#### NewRecipeContainer

* Header
	* Logo/Home
	* Search Container
		* Search Field
		* Search Button
	* Logout
* Background Image
* RecipeForm

#### RecipeDetailContainer

* Header
	* Logo/Home
	* Search Container
		* Search Field
		* Search Button
	* Logout
* RecipeDetail
	* ReviewsIndex
		* ReviewIndexItem

#### ReviewContainer

* ReviewForm

## Routes

| Path                 | Component   	             |      
| -------------------- | ------------------------- |
| /home                | "HomeContainer"           |
| /signup              | "AuthFormContainer"       |
| /signin              | "AuthFormContainer"       |
| /search-results      | "SearchResultsContainer"  |
| /profile             | "ProfileContainer"        |
| /new-recipe          | "NewRecipeContainer"      |
