
class Values {
	String id;
	String name;
	int position;

	Values({this.id, this.name, this.position});

	Values.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		position = json['position'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['name'] = this.name;
		data['position'] = this.position;
		return data;
	}
}