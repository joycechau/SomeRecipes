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

#### ProfileContainer

* Header
	* Logo/Home
	* Search Container
		* Search Field
		* Search Button
	* Logout
* Background Image
* Sidebar
* Selected Sidebar Section
	* Selected Sidebar Details (either About Me, RecipeIndex & RecipeIndexItem, or Create/Edit Recipe)

#### ReviewContainer

* ReviewForm

## Routes

| Path                         | Component   	             |      
| ---------------------------- | ------------------------- |
| /home                        | "HomeContainer"           |
| /signup                      | "AuthFormContainer"       |
| /signin                      | "AuthFormContainer"       |
| /search-results              | "SearchResultsContainer"  |
| /recipe/:id                  | "RecipeDetailContainer"   |
| /profile                     | "ProfileContainer"        |
| /profile/my-recipes          | "ProfileContainer"        |
| /profile/favorites           | "ProfileContainer"        |
| /profile/new-recipe          | "ProfileContainer"        |
| /profile/edit-recipe/:id     | "ProfileContainer"        |
