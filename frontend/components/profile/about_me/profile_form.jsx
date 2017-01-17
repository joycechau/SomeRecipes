import React from 'react';
import { Link } from 'react-router';
import { hashHistory } from 'react-router';

class ProfileForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
                   id: this.props.profile.id,
                   fname: this.props.profile.fname,
                   lname: this.props.profile.lname,
                   interests: this.props.profile.interests
                 };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.updateProfile({user: {
      id: this.state.id,
      fname: this.state.fname,
      lname: this.state.lname,
      interests: this.state.interests
    }});
    this.props.closeModal();
  }

  update(field) {
    return (e) => this.setState({
      [field]: e.target.value
    });
  }

  render() {
    return (
      <div>
        <form className="profile-form" onSubmit={this.handleSubmit}>
          <h2 className="profile-form-title">Update Profile</h2>
          <label className="profile-form-label"> First Name
            <input type="text"
                   value={this.state.fname}
                   onChange={this.update('fname')}
                   className="profile-form-input-fname"/>
          </label>
          <label className="profile-form-label"> Last Name
            <input type="text"
                   value={this.state.lname}
                   onChange={this.update('lname')}
                   className="profile-form-input-lname"/>
          </label>
          <label className="profile-form-label"> Interests
            <textarea
                   value={this.state.interests}
                   onChange={this.update('interests')}
                   className="profile-form-input-interests">
            </textarea>
          </label>
          <input type="submit"
                 value="Submit"
                 className="profile-form-submit-button"
                 />
        </form>
      </div>
    );
  }
}


export default ProfileForm;
