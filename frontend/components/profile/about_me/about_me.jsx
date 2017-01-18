import React from 'react';
import OtherRecipesIndexItem from './other_recipes_index_item';
import ProfileFormContainer from './profile_form_container';
import ProfileImageUploadButtonContainer from './profile_image_upload_button_container';
import Masonry from 'react-masonry-component';
import Modal from 'react-modal';
import { style } from './profile_form_modal';

class AboutMe extends React.Component {
  constructor(props) {
    super(props);
    this.state = { modalOpen: false };
    this.handleProfileUpdateButtonClick = this.handleProfileUpdateButtonClick.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
  }

  componentWillMount() {
    this.props.fetchProfile(this.props.params.username);
  }

  componentWillUnmount() {
    this.props.clearProfile();
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.params.username !== nextProps.params.username) {
      this.props.fetchProfile(nextProps.params.username);
    }
  }

  handleProfileUpdateButtonClick(e) {
    e.preventDefault();
    this.setState({ modalOpen: true });
  }

  closeModal() {
    this.setState({ modalOpen: false });
  }

  openModal() {
    this.setState({ modalOpen: true });
  }

  mainSection() {
    const { username, fname, lname, profile_url, interests } = this.props.profile;
    return (
      <div className="about-me-main-section">
        <div className="about-me-summary">
          <h1 className="about-me-fname">
            First Name: {fname}
          </h1>
          <h1 className="about-me-lname">
            Last Name: {lname}
          </h1>
          <h1 className="about-me-interests">
            Interests: {interests}
          </h1>
        </div>
        <div className="about-me-image-and-username">
          <img className="about-me-image"
            src={profile_url}
            alt={username}/>
          <h1 className="about-me-username">
            {username}
          </h1>
        </div>
      </div>
    );
  }

  ownProfile() {
    return (
      <div>
        <h1 className="about-me-title">
          About Me
        </h1>
        {this.mainSection()}
        <ProfileImageUploadButtonContainer />
        <button className="about-me-update-profile-button"
                onClick={this.handleProfileUpdateButtonClick}>
          Update Profile
        </button>
        <div>
          <Modal
            isOpen={this.state.modalOpen}
            onRequestClose={this.closeModal}
            contentLabel="Modal"
            style={style}>
            <ProfileFormContainer closeModal={this.closeModal}/>
          </Modal>
        </div>
      </div>
    );
  }

  otherUserProfile() {
    const recipes = this.props.profile.recipes ? this.props.profile.recipes : "";
    return (
      <div>
        <h1 className="about-me-title">
          About {this.props.profile.username}
        </h1>
        {this.mainSection()}
        <div className="about-me-other-user-recipes">
          <h2 className="about-me-other-user-recipes-title">
            {this.props.profile.username +"'s"} Recipes
          </h2>
          <Masonry className="about-me-other-user-recipes-index-masonry-container">
            {this.props.profile.recipes.map(recipe => (
              <OtherRecipesIndexItem
                key={recipe.id}
                recipe={recipe}
                currentUser={this.props.currentUser}
                author={this.props.profile.username}
                authorImage={this.props.profile.profile_url}
              />
            ))}
          </Masonry>
        </div>
      </div>
    );
  }

  render() {
    if (this.props.profile.username === this.props.currentUser.username) {
      return this.ownProfile();
    } else {
      return this.otherUserProfile();
    }
  }
}

export default AboutMe;
