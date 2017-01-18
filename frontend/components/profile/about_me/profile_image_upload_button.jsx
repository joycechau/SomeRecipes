import React from 'react';

class ProfileImageUploadButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { profile_url: this.props.profile.profile_url };
    this.upload = this.upload.bind(this);
  }

  upload(e) {
    e.preventDefault();
    const that = this;
    cloudinary.openUploadWidget(
      window.CLOUDINARY_OPTIONS,
      function(error, image) {
        if (error === null) {
          that.props.updateProfile({ user: {
            id: that.props.currentUser.id,
            profile_url: image[0].secure_url
          }})
          .then(that.setState({
            profile_url: image[0].secure_url
          }));
        } else {
          that.props.updateProfile({ user: {
            id: that.props.currentUser.id,
            profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484519058/default_profile_pic.jpg"
        }}).then(that.setState({
          profile_url: "https://res.cloudinary.com/joycechau/image/upload/v1484519058/default_profile_pic.jpg"
        }));
      }
      // const profileURL = image[0].secure_url ? image[0].secure_url : "https://res.cloudinary.com/joycechau/image/upload/v1484519058/default_profile_pic.jpg"
      // that.setState({ profile_url: profileURL});
    });
  }

  render() {
    return (
      <div className="upload-form">
        <button onClick={this.upload}
                className="about-me-update-profile-image-button">
          Update Picture
        </button>
      </div>
    );
  }
}

export default ProfileImageUploadButton;
