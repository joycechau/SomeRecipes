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
          }
        });
      }
      that.setState({ profile_url: image[0].secure_url});
    });
  }

  render() {
    return (
      <div className="upload-form">
        <button onClick={this.upload}
                className="about-me-update-profile-image-button">
          Upload Image
        </button>
      </div>
    );
  }
}

export default ProfileImageUploadButton;
