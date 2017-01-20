import React from 'react';
import Modal from 'react-modal';
import ReviewIndexItem from './review_index_item';
import NewReviewFormContainer from './new_review_form_container';
import { style } from './review_form_modal';

class ReviewIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = { modalOpen: false };
    this.handleNewReviewClick = this.handleNewReviewClick.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.openModal = this.openModal.bind(this);
  }

  handleNewReviewClick(e) {
    e.preventDefault();
    this.setState({ modalOpen: true });
  }

  closeModal() {
    this.props.clearErrors();
    this.setState({ modalOpen: false });
  }

  openModal() {
    this.setState({ modalOpen: true });
  }

  newReview() {
    
    if (this.props.recipe.user_id === this.props.currentUser.id ) {
      return;
    } else {
      return (
        <button
          onClick={this.handleNewReviewClick}
          className="new-review-button">
          Rate and Review
        </button>
      );
    }
  }

  render() {
    return (
      <section>
        <h2 className="review-index-title">
          Reviews
        </h2>
        <hr className="review-hr"/>
        {this.newReview()}
        <div className="new-review-form-modal">
          <Modal
            isOpen={this.state.modalOpen}
            onRequestClose={this.closeModal}
            contentLabel="Modal"
            style={style}>
            <NewReviewFormContainer
              closeModal={this.closeModal}
              className="new-review-form-container"
              recipe={this.props.recipe}
              currentUser={this.props.currentUser}
            />
          </Modal>
        </div>
        <div className="review-index-container">
          {this.props.reviews.map((review, idx) => (
            <ReviewIndexItem
              key={idx}
              review={review}
              currentUser={this.props.currentUser}
              fetchReview={this.props.fetchReview}
              updateReview={this.props.updateReview}
              deleteReview={this.props.deleteReview}
              clearErrors={this.props.clearErrors}
            />
          ))}
        </div>
      </section>
    );
  }
}

export default ReviewIndex;
