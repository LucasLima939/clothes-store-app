
class ReferenceId {
	String key;
	String value;

	ReferenceId({this.key, this.value});

	ReferenceId.fromJson(Map<String, dynamic> json) {
		key = json['Key'];
		value = json['Value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['Key'] = this.key;
		data['Value'] = this.value;
		return data;
	}
}