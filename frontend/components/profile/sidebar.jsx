import React from 'react';
import { hashHistory } from 'react-router';

class SideBar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {

    return (
      <div className="profile-sidebar">
        <button className="profile-sidebar-button">
          <h2 className="profile-sidebar-button-text">
            About Me
          </h2>
        </button>
        <br />
        <button className="profile-sidebar-button">
          <h2 className="profile-sidebar-button-text">
            My Recipes
          </h2>
        </button>
        <br />
        <button className="profile-sidebar-button">
          <h2 className="profile-sidebar-button-text">
            Favorite Recipes
          </h2>
        </button>
        <br />
        <button className="profile-sidebar-button">
          <h2 className="profile-sidebar-button-text">
            Add Recipe
          </h2>
        </button>
      </div>
    );
  }
}

export default SideBar;
