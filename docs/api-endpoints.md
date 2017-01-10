# API Endpoints

## HTML API

### Root
* ```GET /``` - loads React web app

## JSON API

### Users
* ```POST /api/users```
* ```GET /api/users/:id```
* ```PATCH /api/users/:id```

### Session
* ```POST /api/session```
* ```DELETE /api/session```

### Recipes
* ```GET /api/recipes```
	* accepts ```search``` query param to list recipes by search result
* ```POST /api/recipes```
* ```GET /api/recipes/:id```
* ```PATCH /api/recipes/:id```
* ```DELETE /api/recipes/:id```

### Favorites
* ```POST /api/favorites```
* ```DELETE /api/favorites/:id```

### Reviews
* ```POST /api/reviews```
* ```PATCH /api/reviews/:id```
* ```DELETE /api/reviews/:id```
