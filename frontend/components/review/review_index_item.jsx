import React from 'react';
import { hashHistory } from 'react-router';
import Modal from 'react-modal';
import { style } from './review_form_modal';
import StarRatingComponent from 'react-star-rating-component';
import EditReviewFormContainer from './edit_review_form_container';

class ReviewIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      modalOpen: false,
      rating: props.review.rating,
      body: props.review.body
    };
    this.handleProfileClick = this.handleProfileClick.bind(this);
    this.handleEditClick = this.handleEditClick.bind(this);
    this.handleDeleteClick = this.handleDeleteClick.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
  }

  handleProfileClick(e) {
    e.preventDefault();
    const { review } = this.props;
    const author = review.user ? review.user.username: "";
    hashHistory.push(`/profile/${author}`);
  }

  handleEditClick(e) {
    e.preventDefault();
    this.setState({ modalOpen: true });
  }

  handleDeleteClick(e) {
    e.preventDefault();
    this.props.deleteReview(this.props.review.recipe_id);
  }

  closeModal() {
    this.props.clearErrors();
    this.setState({ modalOpen: false });
  }

  openModal() {
    this.setState({ modalOpen: true });
  }

  editAndDeleteButtons() {
    const { currentUser, review } = this.props;
    const currentUserId = currentUser ? currentUser.id: "";
    const reviewUserId = review.user ? review.user_id: "";
    if (currentUserId === reviewUserId ) {
      return (
        <div className="review-edit-and-delete-buttons-div">
          <button onClick={this.handleEditClick}
            className="edit-review-button">
            Update Review
          </button>
          <button onClick={this.handleDeleteClick}
            className="delete-review-button">
            Delete Review
          </button>
        </div>
      );
    }
  }

  render() {
    const { review, currentUser, fetchReview, updateReview, deleteReview } = this.props;
    const author = review.user ? review.user.username: "";
    const author_picture = review.user ? review.user.profile_url: "";
    return (
      <div className="review">
        <button className="review-author-button"
               onClick={this.handleProfileClick}>
          <img src={author_picture}
            className="review-author-button-image"/>
          Reviewed by { author }
        </button>
        <div className="review-star-rating">
          <StarRatingComponent
            name="user-rating"
            value={review.rating}
            emptyStarColor="#E0E0E0"
            starColor="#E5572B"
            editing={false}
            />
        </div>
        <div className="review-body-and-buttons">
          <div className="review-body">
            {review.body}
          </div>
          <div className="review-buttons">
            {this.editAndDeleteButtons()}
          </div>
        </div>
        <div className="edit-review-form-modal">
          <Modal
            isOpen={this.state.modalOpen}
            onRequestClose={this.closeModal}
            contentLabel="Modal"
            style={style}>
            <EditReviewFormContainer
              closeModal={this.closeModal}
              className="edit-review-form-container"
            />
          </Modal>
        </div>
      </div>
    );
  }
}


export default ReviewIndexItem;
