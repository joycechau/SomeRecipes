# Schema Information

### users

| column name          | data types     | details                        |      
| -------------------- | ---------------| ------------------------------ |
| id                   | integer        | not null, primary key          |
| username             | string         | not null, indexed, unique      |
| password_digest      | string         | not null                       |
| session_token        | string         | not null, indexed, unique      |
| fname                | string         |                                |
| lname                | string         |                                |
| profile_url          | string         |                                |
| interests            | text           |                                |


### recipes

| column name          | data types     | details                                              |      
| -------------------- | ---------------| ---------------------------------------------------- |
| id                   | integer        | not null, primary key                                |
| user_id              | integer        | not null, indexed, foreign key (references users)    |
| title                | string         | not null                                             |
| image_url            | string         | default: (some pic)                                  |
| average_rating       | integer        |                                                      |
| category             | string         | not null                                             |
| description          | text           | not null                                             |
| ingredients          | array          | not null                                             |
| directions           | array          | not null                                             |


### reviews

| column name          | data types     | details                                 			       |      
| -------------------- | ---------------| ---------------------------------------------------- |
| id                   | integer        | not null, primary key         					             |
| user_id              | integer        | not null, indexed, foreign key (references users)    |
| recipe_id            | integer        | not null, indexed, foreign key (references recipes)  |
| rating               | integer        | not null                       					             |
| review               | text           | not null                      					             |

### favorites

| column name          | data types     | details                                 			       |      
| -------------------- | ---------------| ---------------------------------------------------- |
| id                   | integer        | not null, primary key         					             |
| user_id              | integer        | not null, indexed, foreign key (references users), unique [recipe_id]    |
| recipe_id            | integer        | not null, indexed, foreign key (references recipes)  |
