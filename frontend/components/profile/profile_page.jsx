import React from 'react';

class ProfilePage extends React.Component {
  render() {

    return (
      <div className="profile-page-container">
        {console.log(this.props.children)};
        <h1> Profile Page </h1>
        { this.props.children }
      </div>
    );
  }
}

export default ProfilePage;
