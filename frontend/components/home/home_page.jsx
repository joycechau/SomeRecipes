import React from 'react';
import RecipeIndexContainer from '../recipe/recipe_index_container';

class HomePage extends React.Component {
  render() {
    return (
      <div>
        <section className="home-background-image">
          Background will go here
        </section>
        <RecipeIndexContainer />
      </div>
    );
  }
}

export default HomePage;
