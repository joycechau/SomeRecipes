var React = require("react");

class ImageUploadButton extends React.Component {
  constructor(props) {
    super(props);
    this.upload = this.upload.bind(this);
  }

  upload(e) {
    e.preventdefault();
    cloudinary.openUploadWidget(
      window.CLOUDINARY_OPTIONS,
      function(error, image) {
      if (error === null) {
        // below is an example, put actual callback here
        // upload successful, can now post to rails
        // the postImage will be passed as a prop from ParentComponent
        // ie <ImageUploadButton postImage={this.postImage} />
        // this.props.postImage(image[0].url);
      }
    });
  }

  render() {
    return (
      <div className="upload-form">
        <button onClick={this.upload}>Upload Image</button>
      </div>
    );
  }
}

export default ImageUploadButton;
