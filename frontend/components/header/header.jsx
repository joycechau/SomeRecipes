import React from 'react';
import Modal from 'react-modal';
import { Link, hashHistory } from 'react-router';
import SessionFormContainer from '../session_form/session_form_container';
import { style } from './session_form_modal';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.state = { modalOpen: false, formType: "login" };
    this.handleDemoButtonClick = this.handleDemoButtonClick.bind(this);
    this.handleSignUpButtonClick = this.handleSignUpButtonClick.bind(this);
    this.handleLogOutButtonClick = this.handleLogOutButtonClick.bind(this);
    this.handleProfileButtonClick = this.handleProfileButtonClick.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
  }

  handleDemoButtonClick(e) {
    e.preventDefault();
    this.props.login({username: "Joyce", password: "password"});
    hashHistory.push('/');
  }

  handleHeaderLogoClick(e) {
    e.preventDefault();
    hashHistory.push('/');
  }

  handleSignUpButtonClick(e) {
    e.preventDefault();
    this.setState({ modalOpen: true, formType: "signup" });
  }

  handleLogOutButtonClick(e) {
    e.preventDefault();
    this.props.logout();
    this.setState({ modalOpen: false, formType: "login" });
  }

  handleProfileButtonClick(e) {
    console.log(this.props);
    e.preventDefault();
    hashHistory.push(`/profile/${this.props.currentUser.username}`);
  }

  closeModal() {
    this.props.clearErrors();
    this.setState({ modalOpen: false, formType: "login" });
  }

  openModal() {
    this.setState({ modalOpen: true });
  }

  headerLogo() {
    return (
      <div>
        <button className="header-logo"
                onClick={this.handleHeaderLogoClick}>
          <h3 className="header-logo-text">SomeRecipes</h3>
          <img className="header-logo-picture"
            src="https://res.cloudinary.com/joycechau/image/upload/v1484299145/logo.png"></img>
        </button>
      </div>
    );
  }




  currentUser() {
    return (
      <div className="header-container">
        <div className="header">
          <h1>{this.headerLogo()}</h1>
          <button onClick={this.handleProfileButtonClick}
                  className="header-profile-button">
            My Profile
          </button>
          <button onClick={this.handleLogOutButtonClick}
            className="header-logout-button">
            Log Out</button>
        </div>
      </div>
    );
  }

  noCurrentUser() {
    return (
      <div className="header-container">
        <div className="header">
          {this.headerLogo()}
          <div>
            <button onClick={this.handleSignUpButtonClick}
              className="header-signup-link"
              >Sign Up</button>
            <button onClick={this.openModal}
              className="header-login-link"
              >Log In</button>
            <Link to="/"
              onClick={this.handleDemoButtonClick}
              className="header-demo-link"
              >Demo</Link>
            <div className="session-form-modal">
              <Modal
                isOpen={this.state.modalOpen}
                onRequestClose={this.closeModal}
                contentLabel="Modal"
                style={style}>
                <SessionFormContainer className="session-form-container"
                  formType={this.state.formType}/>
              </Modal>
            </div>
          </div>
        </div>
      </div>
    );
  }

  render() {
    if (this.props.currentUser) {
      return this.currentUser();
    } else {
      return this.noCurrentUser();
    }
  }
}

export default Header;
