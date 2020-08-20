
class Images {
	String imageId;
	String imageLabel;
	String imageTag;
	String imageUrl;
	String imageText;
	String imageLastModified;

	Images({this.imageId, this.imageLabel, this.imageTag, this.imageUrl, this.imageText, this.imageLastModified});

	Images.fromJson(Map<String, dynamic> json) {
		imageId = json['imageId'];
		imageLabel = json['imageLabel'];
		imageTag = json['imageTag'];
		imageUrl = json['imageUrl'];
		imageText = json['imageText'];
		imageLastModified = json['imageLastModified'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['imageId'] = this.imageId;
		data['imageLabel'] = this.imageLabel;
		data['imageTag'] = this.imageTag;
		data['imageUrl'] = this.imageUrl;
		data['imageText'] = this.imageText;
		data['imageLastModified'] = this.imageLastModified;
		return data;
	}
}