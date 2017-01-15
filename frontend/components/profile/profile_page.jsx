import React from 'react';

class ProfilePage extends React.Component {
  componentWillMount() {
    this.props.fetchProfile(this.props.params.username);
  }

  render() {

    return (
      <div className="profile-page-container">
        <div>Backgroudd image</div>
        <div>sideBar</div>
        <div className="">{ this.props.children }</div>
      </div>
    );
  }
}

export default ProfilePage;
