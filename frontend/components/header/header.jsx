import React from 'react';
import Modal from 'react-modal';
import { Link, hashHistory } from 'react-router';
import SessionFormContainer from '../session_form/session_form_container';
import { style } from './session_form_modal';

class Header extends React.Component {
  constructor(props) {
    super(props);
    this.handleDemoButtonClick = this.handleDemoButtonClick.bind(this);
    this.state = { modalOpen: false };
    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
    Modal.setAppElement("body");
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

  closeModal() {
    this.setState({ modalOpen: false });
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
            src="http://www.clker.com/cliparts/X/O/3/w/l/F/coral-cutlery-hi.png"></img>
        </button>
      </div>
    );
  }

  currentUser() {
    return (
      <div className="header">
        {this.headerLogo()}
        <li>Welcome, {this.props.currentUser.username}</li>
        <button onClick={this.props.logout}
                className="header-logout-button">
                Log Out</button>
      </div>
    );
  }

  noCurrentUser() {
    // debugger
    return (
      <div className="header">
        {this.headerLogo()}
        <div>
          <Link to="/signup"
                onClick={this.openModal}
                className="header-signup-link">
                Sign Up</Link>
          <Link to="/login"
                onClick={this.openModal}
                className="header-login-link"
                >Log In</Link>
          <Link to="/"
                onClick={this.handleDemoButtonClick}
                className="header-demo-link"
                >Demo</Link>

          <Modal
            isOpen={this.state.modalOpen}
            onRequestClose={this.closeModal}
            contentLabel="Modal"
            style={style}>
            <h2>In the Modal</h2>
            <SessionFormContainer location={this.props.location}/>
            <button onclick={this.closeModal}>Close</button>
          </Modal>
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
