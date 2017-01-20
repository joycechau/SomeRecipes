import React from 'react';
import ReviewIndexItem from './review_index_item';

class ReviewIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <section>
        <h2 className="review-index-title">
          Reviews
        </h2>
        <hr className="review-hr"/>
        <div className="review-index-container">
          {this.props.reviews.map((review, idx) => (
            <ReviewIndexItem
              key={idx}
              review={review}
              currentUser={this.props.currentUser}
              fetchReview={this.props.fetchReview}
              updateReview={this.props.updateReview}
              deleteReview={this.props.deleteReview}
              />
          ))}
        </div>
      </section>
    );
  }
}

export default ReviewIndex;
